import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/helper/firestore_helper.dart';
import 'package:govunity_connect/modal/scheme_modal.dart';

class AddEditSchemePage extends StatefulWidget {
  final SchemeModal? scheme;

  const AddEditSchemePage({super.key, this.scheme});

  @override
  State<AddEditSchemePage> createState() => _AddEditSchemePageState();
}

class _AddEditSchemePageState extends State<AddEditSchemePage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for general information
  late TextEditingController _titleController;
  late TextEditingController _titleGController;
  late TextEditingController _titleHController;
  late TextEditingController _descController;
  late TextEditingController _descGController;
  late TextEditingController _descHController;
  late TextEditingController _docController;
  late TextEditingController _docGController;
  late TextEditingController _docHController;
  late TextEditingController _eligController;
  late TextEditingController _eligGController;
  late TextEditingController _eligHController;
  late TextEditingController _linkController;

  String _selectedCategory = 'Agriculture';
  String _selectedType = 'National';

  final List<String> _categories = ['Agriculture', 'Education', 'Rural', 'Health', 'Infrastructure', 'General'];
  final List<String> _types = ['National', 'State'];

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final s = widget.scheme;
    _titleController = TextEditingController(text: s?.title ?? '');
    _titleGController = TextEditingController(text: s?.titleG ?? '');
    _titleHController = TextEditingController(text: s?.titleH ?? '');
    _descController = TextEditingController(text: s?.description ?? '');
    _descGController = TextEditingController(text: s?.descriptionG ?? '');
    _descHController = TextEditingController(text: s?.descriptionH ?? '');
    _docController = TextEditingController(text: s?.document ?? '');
    _docGController = TextEditingController(text: s?.documentG ?? '');
    _docHController = TextEditingController(text: s?.documentH ?? '');
    _eligController = TextEditingController(text: s?.eligibility ?? '');
    _eligGController = TextEditingController(text: s?.eligibilityG ?? '');
    _eligHController = TextEditingController(text: s?.eligibilityH ?? '');
    _linkController = TextEditingController(text: s?.link ?? '');

    if (s != null) {
      if (_categories.contains(s.category)) {
        _selectedCategory = s.category;
      }
      if (_types.contains(s.type)) {
        _selectedType = s.type;
      }
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _titleGController.dispose();
    _titleHController.dispose();
    _descController.dispose();
    _descGController.dispose();
    _descHController.dispose();
    _docController.dispose();
    _docGController.dispose();
    _docHController.dispose();
    _eligController.dispose();
    _eligGController.dispose();
    _eligHController.dispose();
    _linkController.dispose();
    super.dispose();
  }

  Future<void> _saveScheme() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    final newScheme = SchemeModal(
      id: widget.scheme?.id ?? DateTime.now().millisecondsSinceEpoch,
      documentId: widget.scheme?.documentId,
      category: _selectedCategory,
      type: _selectedType,
      title: _titleController.text.trim(),
      titleG: _titleGController.text.trim(),
      titleH: _titleHController.text.trim(),
      description: _descController.text.trim(),
      descriptionG: _descGController.text.trim(),
      descriptionH: _descHController.text.trim(),
      document: _docController.text.trim(),
      documentG: _docGController.text.trim(),
      documentH: _docHController.text.trim(),
      eligibility: _eligController.text.trim(),
      eligibilityG: _eligGController.text.trim(),
      eligibilityH: _eligHController.text.trim(),
      link: _linkController.text.trim(),
      isFavorited: widget.scheme?.isFavorited ?? false,
    );

    try {
      if (widget.scheme?.documentId != null) {
        // Update existing
        await FireStoreHelper.fireStoreHelper.updateScheme(
          docId: widget.scheme!.documentId!,
          scheme: newScheme,
        );
      } else {
        // Add new
        await FireStoreHelper.fireStoreHelper.addScheme(scheme: newScheme);
      }

      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Scheme saved successfully!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error saving scheme: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.scheme != null ? 'Edit Scheme' : 'Add New Scheme',
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Category & Type Dropdowns
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: _selectedCategory,
                            decoration: const InputDecoration(labelText: 'Category'),
                            items: _categories.map((c) {
                              return DropdownMenuItem(value: c, child: Text(c));
                            }).toList(),
                            onChanged: (val) {
                              if (val != null) setState(() => _selectedCategory = val);
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: _selectedType,
                            decoration: const InputDecoration(labelText: 'Type'),
                            items: _types.map((t) {
                              return DropdownMenuItem(value: t, child: Text(t));
                            }).toList(),
                            onChanged: (val) {
                              if (val != null) setState(() => _selectedType = val);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    _buildSectionHeader('Titles'),
                    _buildTextField(_titleController, 'Title (English)', required: true),
                    _buildTextField(_titleHController, 'Title (Hindi)'),
                    _buildTextField(_titleGController, 'Title (Gujarati)'),
                    const SizedBox(height: 16),

                    _buildSectionHeader('Descriptions'),
                    _buildTextField(_descController, 'Description (English)', maxLines: 4, required: true),
                    _buildTextField(_descHController, 'Description (Hindi)', maxLines: 4),
                    _buildTextField(_descGController, 'Description (Gujarati)', maxLines: 4),
                    const SizedBox(height: 16),

                    _buildSectionHeader('Documents Required'),
                    _buildTextField(_docController, 'Documents (English)', maxLines: 3, required: true),
                    _buildTextField(_docHController, 'Documents (Hindi)', maxLines: 3),
                    _buildTextField(_docGController, 'Documents (Gujarati)', maxLines: 3),
                    const SizedBox(height: 16),

                    _buildSectionHeader('Eligibility'),
                    _buildTextField(_eligController, 'Eligibility (English)', maxLines: 3, required: true),
                    _buildTextField(_eligHController, 'Eligibility (Hindi)', maxLines: 3),
                    _buildTextField(_eligGController, 'Eligibility (Gujarati)', maxLines: 3),
                    const SizedBox(height: 16),

                    _buildSectionHeader('Misc.'),
                    _buildTextField(_linkController, 'Reference Link (URL)'),
                    
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: _saveScheme,
                      child: Text(
                        widget.scheme != null ? 'Update Scheme' : 'Save Scheme',
                        style: GoogleFonts.raleway(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 16.0),
      child: Text(
        title,
        style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, {int maxLines = 1, bool required = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: required
            ? (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              }
            : null,
      ),
    );
  }
}

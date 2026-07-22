import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/request_management/domain/entities/housing_type.dart';
import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_cubit.dart';
import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_state.dart';


class RelocationPage extends StatefulWidget {
  const RelocationPage({super.key});

  @override
  State<RelocationPage> createState() => _RelocationPageState();
}

class _RelocationPageState extends State<RelocationPage> {
  String _displayAddress = '';
  final TextEditingController _addressDetailsController =
      TextEditingController();
  HousingType _selectedHousingType = HousingType.villaBasse;
  DateTime? _selectedDate;
  final TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadAddress();
  }

  void _loadAddress() {
    final state = context.read<MapLocationCubit>().state;
    if (state is MapLocationSuccess) {
      setState(() {
        _displayAddress = state.address;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      locale: const Locale('fr', 'FR'),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  String _formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}";
  }

  void _onHousingTypeChanged(HousingType type) {
    setState(() {
      _selectedHousingType = type;
    });
  }


  @override
  void dispose() {
    _addressDetailsController.dispose();
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            // Titre principal
            // Text('Rechargement', style: AppTextStyles.heading2),
            _buildAddressDisplayRequestSection(),

            _buildAddressDetailsField(),

            _buildHousingTypeRequestSection(),

            _buildDateField(),

            _buildCommentField(),
            const SizedBox(height: 24),
            // _buildConfirmButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressDisplayRequestSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ville / Commune / Quartier',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            _displayAddress.isNotEmpty
                ? _displayAddress
                : 'Aucune adresse sélectionnée',
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ],
    );
  }

  Widget _buildAddressDetailsField() {
    return TextFormField(
      controller: _addressDetailsController,
      decoration: InputDecoration(
        labelText: 'Précisions sur votre localisation (optionnel)',
        hintText: 'Ex: Siège social du groupe Orange',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }

  Widget _buildHousingTypeRequestSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sélectionnez votre type d'habitat",
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildRadioOption(HousingType.villaBasse)),
            const SizedBox(width: 16),
            Expanded(child: _buildRadioOption(HousingType.immeuble)),
          ],
        ),
      ],
    );
  }

  Widget _buildRadioOption(HousingType type) {
    final isSelected = _selectedHousingType == type;

    return GestureDetector(
      onTap: () => _onHousingTypeChanged(type),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange[50] : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.grey[300]!,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.orange : Colors.grey[400]!,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                type.label,
                style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.orange[900] : Colors.black87,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return TextFormField(
      readOnly: true,
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        labelText: 'Date de mise en service souhaitée',
        hintText: 'Sélectionner une date',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.orange, width: 2),
        ),
        suffixIcon: const Icon(Icons.calendar_today, color: Colors.orange),
      ),
      controller: TextEditingController(
        text: _selectedDate != null ? _formatDate(_selectedDate!) : '',
      ),
    );
  }

  Widget _buildCommentField() {
    return TextFormField(
      controller: _commentController,
      maxLines: 5,
      minLines: 3,
      decoration: InputDecoration(
        labelText: 'Entrez votre commentaire',
        alignLabelWithHint: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }

}

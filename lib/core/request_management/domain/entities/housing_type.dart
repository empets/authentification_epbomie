enum HousingType {
  villaBasse,
  immeuble;

  String get label {
    switch (this) {
      case HousingType.villaBasse:
        return 'Villa basse';
      case HousingType.immeuble:
        return 'Immeuble';
    }
  }
}

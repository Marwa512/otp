class ProfileEntity {
  final String? image;
  final String? name;
  final String? email;
  final String? phone;
  final String? datebirth;

  ProfileEntity(
      {this.image, this.name, this.email, this.phone, this.datebirth});
  @override
  String toString() {
    return 'ProfileEntity(image: $image, name: $name, email: $email, phone: $phone, datebirth: $datebirth)';
  }
}

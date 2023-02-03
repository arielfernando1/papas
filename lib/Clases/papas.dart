class Papas {
  String name;
  String tipo;
  String precio;
  String img;

  Papas(
      {required this.name,
      required this.tipo,
      required this.precio,
      required this.img});

//from json
  factory Papas.fromJson(Map<String, dynamic> json) {
    return Papas(
      name: json['name'],
      tipo: json['tipo'],
      precio: json['precio'],
      img: json['img'],
    );
  }

//to json
  Map<String, dynamic> toJson() => {
        'name': name,
        'tipo': tipo,
        'precio': precio,
      };
}

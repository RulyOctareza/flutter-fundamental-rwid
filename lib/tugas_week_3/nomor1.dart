/*

Buatlah sebuah sistem geometri menggunakan konsep OOP. Sistem ini harus melibatkan bangun datar dan bangun ruang. 
Gunakan abstract class untuk mendefinisikan kerangka umum dan implementasikan kelas turunan untuk menghitung luas, keliling, atau volume bangun.
Buat abstract class bernama Geometry yang memilik property name dan method void displayInfo() untuk menampilkan informasi tentang objek geometri.
Buat dua abstract class turunan:
Shape2D (untuk bangun datar) yang meng-extend Geometry:
Memiliki method abstrak double calculateArea().
Memiliki method abstrak double calculatePerimeter().
Shape3D (untuk bangun ruang) yang meng-extend Geometry:
Memiliki method abstrak double calculateVolume().


 */

void main() {
  Square square = Square(5);
  square.displayinfo();
  print('');

  Circle circle = Circle(5);
  circle.displayinfo();
  print('');
}

abstract class Geomerty {
  String? name;

  Geomerty(this.name);

  void displayinfo();
}

abstract class Shape2d extends Geomerty {
  Shape2d(String super.name);

  double calculateArea();
  double calculatePerimeter();
}

abstract class Shape3d extends Geomerty {
  double calculateVolume();
  Shape3d(String super.name);
}

class Square extends Shape2d {
  double? sisi;

  Square(this.sisi) : super('Persegi');

  @override
  double calculateArea() {
    print('This is result from Calculation of Area:');

    return sisi! * sisi!;
  }

  @override
  double calculatePerimeter() {
    print('This is result from Calculation of Perimeter:');
    return sisi! * 4;
  }

  @override
  void displayinfo() {
    print('\nNama: $Square');
    print('Panjang Sisi: $sisi');
    print(calculateArea());
    print(calculatePerimeter());
    print('');
  }
}

class Circle extends Shape2d {
  double phi = 3.14;
  double? radial;

  Circle(this.radial) : super('Lingkaran');

  @override
  double calculateArea() {
    print('This is result from Calculation of area:');
    return phi * radial! * radial!;
  }

  @override
  double calculatePerimeter() {
    print('This is result from Calculation of Perimeter:');
    return 2 * phi * radial!;
  }

  @override
  void displayinfo() {
    print('\nNama: $Circle');
    print('Panjang Sisi: $radial');
    print(calculateArea());
    print(calculatePerimeter());
    print('');
  }
}
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class StoreDataIntoTextFile {
  // تحديد مسار او موقع التطبيق
  Future<String> get localPath async {
    final path = await getApplicationDocumentsDirectory();
    return path.path;
  }

  // تحديد الملف الذي سنستخدمه في تخزين مؤقت للبيانات مثل اسم المستخدم و تذكر دخوله للتطبيق
  Future<File> get localFile async {
    // تحديد موقع المجلد في الهاتف
    final file = await localPath;
    // انشاء ملف نصي اسمه data من أجل كتابت البيانات بداخله
    return new File('$file/data.txt');
  }

  //  ادراج بيانات الى الملف من استعادتها في أي وقت
  Future<File> writeData(String value) async {
    // تحديد موقع الملف في مجلد في الهاتف
    final file = await localFile;
    // كتابت البيانات داخل الملف النصي
    return file.writeAsString('$value');
  }

  // قراءة البيانات التي بالملف من أجل عرضها على الواجهه
  Future<String> readData() async {
    try {
      // تحديد موقع الملف في مجلد في الهاتف
      final file = await localFile;
      // قراءة البيانات من داخله
      String data = await file.readAsString();
      // ارجال البيانات التي تم قراؤتها من الملف النصي
      return data;
    } catch (e) {
      // ارجاع رسالة خطأ في حالة عدم القدرة على قراءة البيانات
      return 'error: empty file';
    }
  }
}

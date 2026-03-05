import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/errors/exceptions.dart';

class SupabaseStorageDataSource {
  final SupabaseClient _client;

  const SupabaseStorageDataSource(this._client);

  /// Uploads [file] to [bucket] at [path] and returns the storage path.
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required XFile file,
  }) async {
    try {
      final bytes = await File(file.path).readAsBytes();
      await _client.storage.from(bucket).uploadBinary(
            path,
            bytes,
            fileOptions: FileOptions(
              contentType: file.mimeType ?? 'image/jpeg',
              upsert: true,
            ),
          );
      return path;
    } catch (e) {
      throw ServerException('Gagal mengupload file: $e');
    }
  }
}

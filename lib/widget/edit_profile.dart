import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crop_pretection/helper/text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as storage;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../helper/color.dart';
import '../helper/size.dart';

class EditProfileWidget extends StatefulWidget {
  final String imageUrl;

  const EditProfileWidget({super.key, required this.imageUrl});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  XFile? imageFile;
  ImagePicker imagePicker = ImagePicker();

  uploadImage() async {
    String imageId = Uuid().v4();
    print('q');

    storage.Reference reference =
        storage.FirebaseStorage.instance.ref().child('profile').child(imageId);
    storage.UploadTask uploadTask = reference.putFile(File(imageFile!.path));
    storage.TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    try {
      await taskSnapshot.ref.getDownloadURL().then((url) async {
        await FirebaseFirestore.instance.runTransaction((transaction) async {
          DocumentReference documentReference = FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid);

          DocumentSnapshot snapShotDataUpdate =
              await transaction.get(documentReference);

          transaction.update(documentReference, {
            'photoUrl': url,
          });
        });
      });
    } on FirebaseAuthException catch (e) {
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.heightDivide(context, 8.8888),
      width: AppSize.widthDivide(context, 4),
      child: Stack(
        children: [
          Container(
            height: AppSize.heightDivide(context, 8.8888),
            width: AppSize.widthDivide(context, 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.cFFFFFF(opacity: 1),
              image: widget.imageUrl.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(widget.imageUrl), fit: BoxFit.fill)
                  : null,
              border: Border.all(
                width: 2,
                color: AppColor.c61CE66(opacity: 1),
              ),
            ),
            child: imageFile == null
                ? widget.imageUrl == ''
                    ? Center(
                        child: Text(
                        'A',
                        style: AppStyle.tUrbanistStyle(
                            size: 30,
                            spacing: 2,
                            color: AppColor.c198754(opacity: 1),
                            fontWeight: FontWeight.bold),
                      ))
                    : null
                : Container(
                    height: AppSize.heightDivide(context, 8.8888),
                    width: AppSize.widthDivide(context, 4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(File(imageFile!.path)),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      color: AppColor.cFFFFFF(opacity: 1),
                      // border: Border.all(width: 2, color: AppColor.c009177)
                    ),
                  ),
          ),
          Positioned(
            right: AppSize.widthDivide(context, 80),
            bottom: AppSize.heightMultiply(context, 0),
            child: InkWell(
              onTap: () async {
                imageFile =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                setState(() {});
                uploadImage();
              },
              child: CircleAvatar(
                radius: 14,
                backgroundColor: AppColor.c0FAF3C(opacity: 1),
                child: Center(
                  child: Iconify(
                    Ic.baseline_mode_edit_outline,
                    color: AppColor.cFFFFFF(opacity: 1),
                    size: AppSize.heightDivide(context, 50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

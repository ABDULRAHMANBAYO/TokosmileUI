import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

import '../../utils/custom_style.dart';

class SearchInput extends StatefulWidget {
  final TextInputType keyboardType;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final String? textPlaceholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefixWidget;
  String? initialValue;
  final bool enabled;
  final TextEditingController? controller;
  SearchInput({
    super.key,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.focusNode,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textPlaceholder,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixWidget,
    this.initialValue,
    this.enabled = true,
    this.controller,
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late FocusNode _focusNode;
  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 600),
      padding: EdgeInsets.zero,
      child: TextFormField(
        style: GoogleFonts.plusJakartaSans(
          fontSize: 14.sp,
          color: AppColors.black[5],
          fontWeight: FontWeight.w500,
        ),
        initialValue: widget.initialValue,
        controller: widget.controller,
        enabled: widget.enabled,
        focusNode: _focusNode,
        cursorColor: AppColors.black[5],
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixWidget,
          prefix: widget.prefixIcon,
          hintText: widget.textPlaceholder,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
          hintStyle: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            color: AppColors.grayScale[20],
            fontWeight: FontWeight.w600,
          ),
          isDense: true,
          focusedBorder: AppStyles.focusedBorder,
          disabledBorder: AppStyles.focusBorder,
          enabledBorder: AppStyles.focusBorder,
          errorBorder: AppStyles.focusErrorBorder,
          focusedErrorBorder: AppStyles.focusErrorBorder,
          errorStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12.sp,
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword,
        onSaved: widget.onSaved,
        onEditingComplete: () {
          setState(() {
            FocusScope.of(context).unfocus();
          });
          if (widget.onEditingComplete != null) widget.onEditingComplete!();
        },
        onChanged: widget.onChanged,
        validator: widget.validator,
        onTap: () {
          setState(() {
            FocusScope.of(context).requestFocus(_focusNode);
          });
          if (widget.onTap != null) widget.onTap!();
        },
      ),
    );
  }
}

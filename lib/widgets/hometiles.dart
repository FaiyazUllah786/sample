import 'package:flutter/material.dart';

class HomeTiles extends StatefulWidget {
  IconData icon;
  String text;
  HomeTiles({super.key, required this.icon, required this.text});

  @override
  State<HomeTiles> createState() => _HomeTilesState();
}

class _HomeTilesState extends State<HomeTiles> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: Colors.white,
      onTap: () {
        setState(() {
          _isTap = !_isTap;
          print(_isTap);
        });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(12)),
        width: 80,
        height: 100,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: _isTap ? 10 : 0,
          color: _isTap ? Color.fromRGBO(77, 190, 247, 1) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: 35.0,
                color: _isTap ? Colors.white : Colors.black,
              ),
              SizedBox(height: 10),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16,
                  color: _isTap ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

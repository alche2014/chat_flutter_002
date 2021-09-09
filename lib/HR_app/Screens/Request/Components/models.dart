import 'package:chatapp/HR_app/Screens/Request/Components/requests_card.dart';
import 'package:flutter/material.dart';

String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
List myreq = [
  RequestCard(
    text1: 'Request For Laptop',
    text2: content,
    status: 'Pending',
  ),
  RequestCard(
    text1: 'Rquest For Hiring',
    text2: ' ',
    status: 'Approved',
  ),
  RequestCard(
    text1: 'Rquest For Casual Leave',
    text2: content,
    status: 'Approved',
  ),
];

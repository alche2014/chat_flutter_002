import 'package:chatapp/HR_app/Screens/LeaveHistory/Components/leave_history_card.dart';
import 'package:chatapp/HR_app/Screens/MyRequests/Components/leave_history_card.dart';
import 'package:flutter/material.dart';

String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
List myReq = [
  MyRequestCard(
    text1: 'Request For Laptop',
    text2: content,
    status: 'Pending',
  ),
  MyRequestCard(
    text1: 'Rquest For Hiring',
    text2: '',
    status: 'Approved',
  ),
  MyRequestCard(
    text1: 'Rquest For Casual Leave',
    text2: content,
    status: 'Approved',
  ),
  MyRequestCard(
    text1: 'Rquest For Casual Leave',
    text2: content,
    status: 'Approved',
  ),
];

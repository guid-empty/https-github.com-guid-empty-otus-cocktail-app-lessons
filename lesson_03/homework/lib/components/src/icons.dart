import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Widget iconShare = SvgPicture.string('''
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M10 3V5H5V19H19V14H21V20C21 20.2652 20.8946 20.5196 20.7071 20.7071C20.5196 20.8946 20.2652 21 20 21H4C3.73478 21 3.48043 20.8946 3.29289 20.7071C3.10536 20.5196 3 20.2652 3 20V4C3 3.73478 3.10536 3.48043 3.29289 3.29289C3.48043 3.10536 3.73478 3 4 3H10ZM17.586 5H13V3H21V11H19V6.414L12 13.414L10.586 12L17.586 5Z" fill="white"/>
  </svg>''');

final Widget iconLike = SvgPicture.string('''
  <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M10.001 1.52898C12.35 -0.58002 15.98 -0.51002 18.243 1.75698C20.505 4.02498 20.583 7.63698 18.479 9.99298L9.99901 18.485L1.52101 9.99298C-0.582994 7.63698 -0.503994 4.01898 1.75701 1.75698C4.02201 -0.50702 7.64501 -0.58302 10.001 1.52898Z" fill="white"/>
  </svg>''');

final Widget iconStarred = SvgPicture.string('''
  <svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
    <circle cx="24" cy="24" r="24" fill="#2A293A"/>
    <path d="M24 8L27.5922 19.0557H39.2169L29.8123 25.8885L33.4046 36.9443L24 30.1115L14.5954 36.9443L18.1877 25.8885L8.7831 19.0557H20.4078L24 8Z" fill="white"/>
  </svg>''');

final Widget iconNotStarred = SvgPicture.string('''
  <svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
    <circle cx="24" cy="24" r="24" fill="#2A293A"/>
    <path d="M24 8L27.5922 19.0557H39.2169L29.8123 25.8885L33.4046 36.9443L24 30.1115L14.5954 36.9443L18.1877 25.8885L8.7831 19.0557H20.4078L24 8Z" fill="#1A1927"/>
  </svg>''');
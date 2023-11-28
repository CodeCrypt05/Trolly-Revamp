import 'package:trolly_revamp/models/profile.dart';
import 'package:trolly_revamp/utils/constatnt.dart';

List<List<Profile>> informationData = [
  [
    Profile(
      title: 'Payment Information',
      mainIcon: myCreditIC,
      optionText: 'My Trolley Credit',
      forwardIcon: arrowsIC,
    )
  ],
  [
    Profile(
      title: 'Personal Information',
      mainIcon: myCartIC,
      optionText: 'My Cart',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: myOrdersIC,
      optionText: 'My Orders',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: myAddressIC,
      optionText: 'My Address',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: myEnquiriesIC,
      optionText: 'My Enquiries',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: changePasswordIC,
      optionText: 'Change Password',
      forwardIcon: arrowsIC,
    ),
  ],
  [
    Profile(
      title: 'Other Information',
      mainIcon: changeCurrencyIC,
      optionText: 'Change Currency',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: termsConditionsIC,
      optionText: 'Terms & Conditions ',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: aboutUsIC,
      optionText: 'About us',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: contactUsIC,
      optionText: 'Contact us',
      forwardIcon: arrowsIC,
    ),
    Profile(
      title: '',
      mainIcon: logoutIC,
      optionText: 'Logout',
      forwardIcon: arrowsIC,
    ),
  ],
  [
    Profile(
      title: '',
      mainIcon: deleteIC,
      optionText: 'Delete Account',
      forwardIcon: redArrowsIC,
    ),
  ],
];

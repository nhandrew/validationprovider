import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../validation/signup_validation.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                errorText: validationService.firstName.error,
              ),
              onChanged: (String value) {
                validationService.changeFirstName(value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Last Name",
                errorText: validationService.lastName.error,
              ),
              onChanged: (String value) {
                validationService.changeLastName(value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "DOB",
                  errorText: validationService.dob.error,
                  hintText: "yyyy-mm-dd"),
              onChanged: (String value) {
                validationService.changeDOB(value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              textColor: Colors.white,
              child: Text('Submit'),

              // onPressed: (!validationService.isValid)
              //     ? null
              //     : validationService.submitData,
              onPressed: () {
                !validationService.isValid
                    ? null
                    : validationService.submitData();
              },
            )
          ],
        ),
      ),
    );
  }
}

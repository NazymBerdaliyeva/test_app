import 'package:flutter/material.dart';
import 'package:test_app/resources/components/team_member_form.dart';
import 'package:test_app/resources/components/title.dart';

import '../model/team_member.dart';

class TeamView extends StatelessWidget {
  final List<TeamMember> members = [
    TeamMember(name: "Саня Рыжий", image: "assets/images/img1.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img2.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img3.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img1.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img2.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img3.jpeg"),
    TeamMember(name: "Саня Рыжий", image: "assets/images/img1.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleName(name: 'Команда', margin: EdgeInsets.only(top: 39, left: 31),),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 216,
            margin: EdgeInsets.only(
              left: 34,
              top: 26,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 0),
              itemCount: members.length,
              itemBuilder: (_, int index) {
                final member = members[index];
                return TeamMemberForm(
                  image: member.image,
                  name: member.name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

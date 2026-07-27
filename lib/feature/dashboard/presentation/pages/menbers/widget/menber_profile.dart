import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';

class Menberprofile extends StatefulWidget {
  const Menberprofile({super.key, required this.member});
  final ProfileResponse member;

  @override
  State<Menberprofile> createState() => _MenberprofileState();
}

class _MenberprofileState extends State<Menberprofile> {
  final List<Map<String, dynamic>> infos = [
    {"label": "Profil"},
    {"label": "Présence"},
    {"label": "Note Pastorale"},
  ];




  int selectedIndex = 0;
  late bool isHover;

  @override
  void initState() {
    super.initState();
    isHover = false;
  }

  @override
  Widget build(BuildContext context) {
   
     final List<Map<String, dynamic>> contactInfos = [
    {"label": "Téléphone", "value": widget.member.contact, "icon": Icons.phone},
    {"label": "Email", "value": widget.member.email, "icon": Icons.email},
    {
      "label": "Adresse",
      "value": widget.member.zoneResidence,
      "icon": Icons.location_on,
    },
  ];



  final List<Map<String, dynamic>> additionalInfos = [
    {
      "label": "Date de naissance",
      "value": cleanValue(widget.member.dateNaissance),
      "icon": Icons.calendar_today,
    },
    {
      "label": "Situation matrimoniale",
      "value": widget.member.matrimonial,
      "icon": Icons.family_restroom,
    },
    {
      "label": "Date d'adhésion",
      "value": cleanValue(widget.member.dateConversion),
      "icon": Icons.calendar_today,
    },
    {
      "label": "Ministère",
      "value": widget.member.ministere,
      "icon": Icons.calendar_today,
    },
    {
      "label": "Statut",
      "value": widget.member.orphelin,
      "icon": Icons.calendar_today,
    },
     {
      "label": "Encadreur",
      "value": widget.member.encadreur,
      "icon": Icons.badge_outlined,
    },
     {
      "label": "Cellule de prière",
      "value": widget.member.cellulePriere,
      "icon": Icons.badge_outlined,
    },
     {
      "label": "Code de cellule",
      "value": widget.member.celluleCode,
      "icon": Icons.badge_outlined,
    },
     {
      "label": "Commune",
      "value": widget.member.commune,
      "icon": Icons.badge_outlined,
    },
  ];

    final List<Map<String, dynamic>> membershipInfos = [
    {
      "label": "Membre depuis",
      "value": cleanValue(widget.member.dateConversion).substring(0, 4),
      "icon": Icons.phone,
      "isOpen": true,
    },
    {"label": "Présence", "value": "", "icon": Icons.email, "isOpen": false},
    {
      "label": "Total cultes",
      "value": "",
      "icon": Icons.location_on,
      "isOpen": false,
    },
  ];






    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.2.sw, vertical: 20.h),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(color: C.border),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  C.dark,
                  const Color.fromARGB(255, 23, 57, 37).withValues(alpha: 0.9),
                ],
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile du membre",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade400,
                        ),
                      ),

                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close, color: C.background),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15.h),

                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: C.violet,
                          border: Border.all(color: C.background),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Text(
                            getInitiales(widget.member.name),
                          style: context.appTypographie.body.copyWith(
                            color: C.background,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           widget.member.name,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: C.background,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                          widget.member.fonction,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: C.gold,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                  horizontal: 3.w,
                                ),
                                decoration: BoxDecoration(
                                  color:  switch (widget.member.statusSpirituel.toLowerCase()) {
                                    "baptiser" => C.background,
                                    "non baptisé" => C.background,
                                    _ => C.background,
                                  },
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Text(
                                  switch (widget.member.statusSpirituel.toLowerCase()) {
                                    "baptiser" => "Actif",
                                    "non baptisé" => "non Actif",
                                    _ => "Non actif",
                                  },
                                  style: context.appTypographie.body.copyWith(
                                    color:  switch (widget.member.statusSpirituel.toLowerCase()) {
                                    "baptiser" => C.greenLight,
                                    "non baptisé" => Colors.black,
                                    _ => Colors.black,
                                  },
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              SizedBox(width: 3.w),
                              
                              if(widget.member.statusSpirituel.toLowerCase() == "baptiser")
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                  horizontal: 3.w,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: C.gold.withValues(alpha: 0.3),
                                  ),
                                  color: C.gold.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Text(
                                  "Baptisé",
                                  style: context.appTypographie.body.copyWith(
                                    color: C.gold,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    ...List.generate(
                      membershipInfos.length,
                      (index) => Expanded(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 1,
                                  color: C.muted.withValues(alpha: 0.3),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.r),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: C.muted.withValues(alpha: 0.3),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        membershipInfos[index]['value'] ?? '',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                      Text(
                                        membershipInfos[index]['label'] ?? '',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: C.muted.withValues(alpha: 0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (membershipInfos[index]['isOpen'] == false)
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 0,
                                child: Container(
                                  color: C.muted.withValues(alpha: 0.3),
                                  child: Icon(
                                    Icons.lock_clock_outlined,
                                    color: C.card,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: C.background,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.r),
                bottomRight: Radius.circular(5.r),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ...List.generate(infos.length, (index) {
                      final info = infos[index];
                      final isSelected = selectedIndex == index;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 1,
                                color: C.muted.withValues(alpha: 0.3),
                              ),
                              Container(
                                padding: EdgeInsets.all(7.r),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: isSelected
                                          ? C.gold
                                          : Colors.grey.shade300,
                                      style: BorderStyle.solid,
                                      width: 2.r,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      info["label"].toString().toUpperCase(),
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: C.dark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
                Column(
                  children: switch (selectedIndex) {
                    0 => [
                      // Coordonnées
                      Container(
                        padding: EdgeInsets.all(5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Text(
                              'Coordonnées',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: C.muted,
                              ),
                            ),
                            SizedBox(height: 17.h),

                            ...List.generate(contactInfos.length, (index) {
                              return MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    isHover = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    isHover = false;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  transform: Matrix4.translationValues(
                                    0,
                                    isHover
                                        ? -8
                                        : 0, // déplacement vers le haut
                                    0,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(10.h),
                                    margin: EdgeInsets.only(right: 0.1.sw),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey.withValues(
                                          alpha: 0.2,
                                        ),
                                      ),
                                      borderRadius: index == 1
                                          ? BorderRadius.zero
                                          : index == contactInfos.length - 1
                                          ? BorderRadius.only(
                                              bottomLeft: Radius.circular(5.r),
                                              bottomRight: Radius.circular(5.r),
                                            )
                                          : BorderRadius.only(
                                              topLeft: Radius.circular(5.r),
                                              topRight: Radius.circular(5.r),
                                            ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5.r),
                                          decoration: BoxDecoration(
                                            color: C.muted.withValues(
                                              alpha: 0.1,
                                            ),
                                            border: Border.all(
                                              color: C.muted.withValues(
                                                alpha: 0.1,
                                              ),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            contactInfos[index]['icon']
                                                as IconData,
                                            color: C.muted,
                                            size: 15,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              contactInfos[index]['label']
                                                  .toString()
                                                  .toUpperCase(),
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: C.muted,
                                              ),
                                            ),
                                            SizedBox(height: 3.h),
                                            Text(
                                              contactInfos[index]['value']
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                color: C.dark,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),

                            SizedBox(height: 15.h),
                            Text(
                              'Informations supplémentaires',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: C.muted,
                              ),
                            ),
                            SizedBox(height: 17.h),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Wrap(
                                spacing: 5.w,
                                runSpacing: 5.h,
                                children: List.generate(
                                  additionalInfos.length,
                                  (index) => Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 6.h,
                                    ),
                                    width: .15.sw,
                                    decoration: BoxDecoration(
                                      color: C.background.withValues(
                                        alpha: 0.1,
                                      ),
                                      border: Border.all(color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          additionalInfos[index]['label']
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: C.muted,
                                          ),
                                        ),
                                        Text(
                                          additionalInfos[index]['value']
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: C.dark,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    1 => [
                      // Informations supplémentaires
                      Container(
                        padding: EdgeInsets.all(5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Text(
                              "Cette section n'est pas encore disponible",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: C.muted,
                              ),
                            ),
                            SizedBox(height: 17.h),
                          ],
                        ),
                      ),
                    ],
                    _ => [
                      Container(
                        padding: EdgeInsets.all(5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.h),
                            Text(
                              "Cette section n'est pas encore disponible",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: C.muted,
                              ),
                            ),
                            SizedBox(height: 17.h),
                          ],
                        ),
                      ),
                    ],
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

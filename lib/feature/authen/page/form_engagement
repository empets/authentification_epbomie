import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/alert/app_alerte.dart';
import 'package:grace_church/core/constante/const.dart';
import 'package:grace_church/core/custome_widget/button.dart';
import 'package:grace_church/core/custome_widget/custome_text.dart';
import 'package:grace_church/core/custome_widget/form_filed.dart';
import 'package:grace_church/core/custome_widget/navigate.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/injection/injection_container.dart';
import 'package:grace_church/feature/authen/domaine/usercase/create_profile_engagement.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/event/event_create_compte.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/form_profile_engagement_bloc.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/state/state_create_compte.dart';
import 'package:grace_church/feature/home/overview.dart';
import 'package:grace_church/gen/assets.gen.dart';

class FormEngagement extends StatefulWidget {
  const FormEngagement({super.key, this.profile = false});
  final bool profile;

  @override
  State<FormEngagement> createState() => _FormEngagementState();
}

class _FormEngagementState extends State<FormEngagement> {
  late bool isSignUp = false;
  late bool isChecked = false;

  late String selectedOptions = "";
  String? selectedOption;

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Actif Service de restauration',
      'subtitle': 'Service haut débit avec installation rapide',
      'value': 'oui',
    },
    {
      'title': 'Service de restauration non actif',
      'subtitle': 'Support disponible 24h/24 et 7j/7',
      'value': 'non',
    },
  ];

  late String selectedOptionss = "";
  String? selectedOptionsss;

  final List<Map<String, dynamic>> itemss = [
    {
      'title': 'Résidence neblé',
      'subtitle': 'Service haut débit avec installation rapide',
      'value': 'Hôtel',
    },
    {
      'title': 'Hôtel',
      'subtitle': 'Support disponible 24h/24 et 7j/7',
      'value': 'Résidence',
    },
  ];

  String? selectedValue;

  final List<Map<String, String>> options = List.generate(
    500, // 500 valeurs
    (index) {
      final int value = (index + 1) * 1000;
      return {
        "id": value.toString(),
        "label":
            "${value.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ')} FCFA",
      };
    },
  );

  String? selectedValues;

  final List<Map<String, String>> optionss = List.generate(
    500, // 500 valeurs
    (index) {
      final int value = (index + 1) * 1000;
      return {
        "id": value.toString(),
        "label":
            "${value.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ')} FCFA",
      };
    },
  );

  late bool isSelectedHotel = false;
  String? statutMenberValue;
  String? departementsEgliseValue;
  String? joursSemaineValue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateComteProfileEngagementBloc(
        createEngagementProfileUsercase:
            getIt<CreateEngagementProfileUsercase>(),
      ),
      child: BlocListener<CreateComteProfileEngagementBloc, CreateCompteEngagementState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            // ----------------------------
            // Handle navigation based on profile flag
            // ----------------------------
            if (widget.profile) {
              Navigator.of(context).pop(true);
              return;
            }
            Navigator.of(context).push(fadeRoute( OverviewScreen()));
          }
           if (state.status.isFailure) {
            return AppAlert.showError(
              context,
              state.errorMessage,
              showOnTop: true,
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.grey.shade50,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: .h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                  right: 10.w,
                                  top: 4.h,
                                  bottom: 5.h,
                                ),
                                child: SvgPicture.asset(assets.images.arrowBack.path),
                              ),
                            ),
                            CustomeText(
                              text: 'Engagement ',
                              style: context.appTypographie.subtitle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(width: 0),
                            Container(
                              decoration: BoxDecoration(
                                color: context.appColor.primaryLightBlue,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                    fadeRoute(OverviewScreen()),
                                    (route) => false,
                                  );
                                },
                                icon: Icon(Icons.home_work_rounded),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 30.h),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomeText(
                            text: 'Etape 4 sur 4',
                            style: context.appTypographie.small.copyWith(
                              color: context.appColor.primaryBlue,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          CustomeText(
                            text: '100% Complété',
                            style: context.appTypographie.small.copyWith(
                              fontSize: 12.sp,
                              color: context.appColor.primaryGray500,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 4.h, bottom: 18.h),
                      child: FAProgressBar(
                        size: 6.h,
                        currentValue: 100,
                        displayTextStyle: context.appTypographie.small.copyWith(
                          fontSize: 0.h,
                        ),
                        displayText: '%',
                        progressColor: context.appColor.primaryBlue,
                        backgroundColor: context.appColor.primaryLightBlue,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 19.h),
                      child: Divider(
                        height: 2.h,
                        color: context.appColor.primaryLightBlue,
                      ),
                    ),

                    CustomeText(
                      text: 'Rejoindre un département',
                      style: context.appTypographie.subtitle.copyWith(
                        fontSize: 18.h,
                        color: context.appColor.primaryGrayDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    CustomeText(
                      text:
                          "Aidez-nous à mieux vous connaître pour vous intégrer dans la vide de l'église",
                      style: context.appTypographie.small.copyWith(
                        fontSize: 12.sp,
                        color: context.appColor.primaryGray500,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 0.04.sh),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.groups_outlined,
                                color: context.appColor.primaryBlue,
                              ),
                              SizedBox(width: 10.w),
                              Flexible(
                                child: CustomeText(
                                  text:
                                      "Dans quel département souhaiteriez-vous servir ?",
                                  style: context.appTypographie.small.copyWith(
                                    fontSize: 14.sp,
                                    color: context.appColor.primaryGray700,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocBuilder<
                              CreateComteProfileEngagementBloc,
                              CreateCompteEngagementState
                            >(
                              builder: (context, state) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 4.h),
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: state.departement.isValid
                                          ? context.appColor.primaryLightBlue
                                          : Colors.grey.withOpacity(.5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  // statutMenber
                                  child: CustomDropdown(
                                    readOnly: state.status.isInProgress,
                                    hint: "Choisir un département",
                                    value: departementsEgliseValue,
                                    items: departementsEglise,
                                    onChanged: (value) {
                                      setState(() {
                                        departementsEgliseValue = value;
                                      });
                                      context
                                          .read<
                                            CreateComteProfileEngagementBloc
                                          >()
                                          .add(
                                            EventCreateCompteEngagment.changeDepartement(
                                              value.toString(),
                                            ),
                                          );
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),

                    BlocBuilder<
                      CreateComteProfileEngagementBloc,
                      CreateCompteEngagementState
                    >(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 19.h),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.auto_awesome_outlined,
                                    color: context.appColor.primaryBlue,
                                  ),
                                  SizedBox(width: 10.w),
                                  Flexible(
                                    child: CustomeText(
                                      text:
                                          "Talents et compétences spécifiques",
                                      style: context.appTypographie.small
                                          .copyWith(
                                            fontSize: 14.sp,
                                            color:
                                                context.appColor.primaryGray700,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ProductionFormCustomer(
                              readOnly: state.status.isInProgress,
                              isColorBlue: state.competence.isValid
                                  ? true
                                  : false,
                              letSpace: [],
                              inputLabel: 'Nom Comple',
                              inputLabelSize: 0.sp,
                              textLabel:
                                  'Ex: Graphisme, Télécomunication, Cuisine...',

                              errorText:
                                  state.competence.isPure ||
                                      state.competence.isValid
                                  ? null
                                  : '',
                              msgError: 'Veuillez renseigner ce champ',

                              onChanged: (name) {
                                context
                                    .read<CreateComteProfileEngagementBloc>()
                                    .add(
                                      EventCreateCompteEngagment.changeCompetence(
                                        name,
                                      ),
                                    );
                              },
                              maxLines: 3,
                              minLines: 2,
                            ),
                          ],
                        );
                      },
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: context.appColor.primaryBlue,
                          ),
                          SizedBox(width: 6.w),
                          CustomeText(
                            text: "Vos disponibilités",
                            style: context.appTypographie.small.copyWith(
                              fontSize: 14.sp,
                              color: context.appColor.primaryGray700,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder<
                      CreateComteProfileEngagementBloc,
                      CreateCompteEngagementState
                    >(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4.h),
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: state.disponibiliry.isValid
                                      ? context.appColor.primaryLightBlue
                                      : Colors.grey.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // statutMenber
                              child: CustomDropdown(
                                readOnly: state.status.isInProgress,
                                hint: "Choisir un département",
                                value: joursSemaineValue,
                                items: joursSemaine,
                                onChanged: (value) {
                                  setState(() {
                                    joursSemaineValue = value;
                                  });
                                  context
                                      .read<CreateComteProfileEngagementBloc>()
                                      .add(
                                        EventCreateCompteEngagment.changeDisponibiliry(
                                          value.toString(),
                                        ),
                                      );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 10.h,
                      ),
                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          color: context.appColor.primaryBlue.withValues(
                            alpha: 0.1,
                          ),
                        ),
                        color: context.appColor.primaryLightBlue,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: context.appColor.primaryBlue,
                          ),
                          SizedBox(width: 8.w),
                          Flexible(
                            child: Text(
                              "En cliquant sur Terminer, vous confirmez vouloir vous "
                              "engager dans la vie de la communauté. Un responsable de"
                              "département vous contactera prochainement.",
                              style: context.appTypographie.small.copyWith(
                                fontSize: 11.sp,
                                color: context.appColor.primaryGray500
                                    .withValues(alpha: 0.8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 1.h),
                      child:
                          BlocBuilder<
                            CreateComteProfileEngagementBloc,
                            CreateCompteEngagementState
                          >(
                            builder: (context, state) {
                              return PrimaryButton(
                                isLoading: state.status.isInProgress,
                                label: 'Continuer',
                                backgroundColor:
                                    state.status.isInProgress || state.isValide
                                    ? context.appColor.primaryBlue
                                    : context.appColor.primaryLightBlue,
                                colorText: context.appColor.primaryWhite,
                                onPressed: state.status.isInProgress
                                    ? null
                                    : () {
                                        FocusScope.of(context).unfocus();
                                        context
                                            .read<
                                              CreateComteProfileEngagementBloc
                                            >()
                                            .add(
                                              EventCreateCompteEngagment.submit(),
                                            );
                                      },
                              );
                            },
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
//  PeckWebserviceAPIClient_PeckWebserviceAPICalls.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/31/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckWebserviceAPIClient.h"

#define login_registration_req @"http://www.webservice.peckapp.com/api/applogin"
#define login_request @"http://www.webservice.peckapp.com/api/appchklogin"
#define registration_request @"http://www.webservice.peckapp.com/api/appchkregister"
#define validate_activation_code_req @"http://www.webservice.peckapp.com/api/appchkcode"
#define facebook_data_post @"http://www.webservice.peckapp.com/api/appfblogin"
#define facebook_emailpassword_post @"http://www.webservice.peckapp.com/api/appenteremailnpassword"
#define forgotPassword @"http://www.webservice.peckapp.com/api/Newforgot"
#define facebook_logout @"http://www.webservice.peckapp.com/api/applogout"
#define fbuserprofile_details @"http://www.webservice.peckapp.com/api/appgetuserprofile"
#define fbuserprofile_submit_details @"http://www.webservice.peckapp.com/api/appsubmitprofile"
#define changeuserpassword @"http://www.webservice.peckapp.com/api/ChangePassword"
#define allCampusDepartmentsdetails @"http://www.webservice.peckapp.com/api/listdepartments"
#define subscribetoDeparment @"http://www.webservice.peckapp.com/api/subscribetodepartment"
#define CampusEvents @"http://www.webservice.peckapp.com/api/displaycampusevents"
#define Myhorizon @"http://www.webservice.peckapp.com/api/apiMyHorizoneventsListing"
#define subscribetoCampusEvents @"http://www.webservice.peckapp.com/api/subscribeCampusEvent"
#define followMyHorizon @"http://www.webservice.peckapp.com/api/FollowMyHorizonEvents"
#define allAthleticsTeamdetails @"http://www.webservice.peckapp.com/api/applistgames"
#define subscribeAthletics @"http://www.webservice.peckapp.com/api/subscribetogames"
#define athleticsEvents @"http://www.webservice.peckapp.com/api/AthleticsEventsList"
#define subscribeAthleticsEvents @"http://www.webservice.peckapp.com/api/subscribeAthleticsEvent"
#define singleCampusEventView @"http://www.webservice.peckapp.com/api/ViewSingleEvent"
#define singleAthleticsEventView @"http://www.webservice.peckapp.com/api/SingleAthleticsEvent"
#define mycircleListing @"http://www.webservice.peckapp.com/api/listmycircle"
#define allcircleListing @"http://www.webservice.peckapp.com/api/listcirclesusers"
#define addnewCircleListing @"http://www.webservice.peckapp.com/api/NewAddCircleUsers"
#define viewSingleCircle @"http://www.webservice.peckapp.com/api/viewsinglecircle"
#define deleteCircle @"http://www.webservice.peckapp.com/api/appDeleteCircle"
#define deleteCircleMebers @"http://www.webservice.peckapp.com/api/appDeleteCircleMembers"
#define addCircleMembers @"http://www.webservice.peckapp.com/api/CircleNewMembersList"
#define editCircles @"http://www.webservice.peckapp.com/api/EditCircleMembers"
#define displayCampusForumComments @"http://www.webservice.peckapp.com/api/DisplayCampusForum"
#define addCampusForumComments @"http://www.webservice.peckapp.com/api/AddCommentsCampusForum"
#define displayAthleticsForumComments @"http://www.webservice.peckapp.com/api/DisplayAthleticsForum"
#define addAthleticsForumComments @"http://www.webservice.peckapp.com/api/AddCommentsAthleticsForum"
#define AddNewCircle @"http://www.webservice.peckapp.com/api/AddNewCircle"
#define CreateNewEvent @"http://www.webservice.peckapp.com/api/appcreatenewevent"
#define LocationList @"http://www.webservice.peckapp.com/api/appListEventLocations"
#define EventAttendingMemberList @"http://www.webservice.peckapp.com/api/ListAttendingEventMembers"
#define AthleticEventAttendingMemberList @"http://www.webservice.peckapp.com/api/ListAthleticsAttendingEventMembers"
#define ShareEventCircle @"http://www.webservice.peckapp.com/api/ShareEventCircle"
#define allStudentGroup @"http://www.webservice.peckapp.com/api/appListAfterHours"
#define subscribeToStudentGroup @"http://www.webservice.peckapp.com/api/subscribeStudentGroup"
#define afterHoursEvents @"http://www.webservice.peckapp.com/api/displayafterhoursevents"
#define editEvent @"http://www.webservice.peckapp.com/api/appEditEvent"
#define deleteEvent @"http://www.webservice.peckapp.com/api/appDeleteEvent"
#define inviteFriendsList @"http://www.webservice.peckapp.com/api/SubmitNewEventAddedMembers"
#define ActivityList @"http://www.webservice.peckapp.com/api/ListNotifications"
#define DiningList @"http://www.webservice.peckapp.com/api/ListDiningHours"
#define PostNotificationStatus @"http://www.webservice.peckapp.com/api/subscribenotofication"
#define GetNotificationStatus @"http://www.webservice.peckapp.com/api/CurrentNotification"
#define ShareCircleListing @"http://www.webservice.peckapp.com/api/EventShareCircleUsers"
#define ShareCircleSubmit @"http://www.webservice.peckapp.com/api/EventShareDone"
#define DiningSectionWise @"http://www.webservice.peckapp.com/api/SectionWiseDiningHours"
#define previousCampusEvents @"http://www.webservice.peckapp.com/api/Previouscampusevents"
#define previousAfterHours @"http://www.webservice.peckapp.com/api/Previousafterhoursevents"
#define previousAthleticsEvents @"http://www.webservice.peckapp.com/api/PreviousAthleticsEventsList"
#define previousMyHorizon @"http://www.webservice.peckapp.com/api/PreviousMyHorizoneventsListing"
#define diningMenus @"http://www.webservice.peckapp.com/api/ListDiningMenus"
#define submitfeedback @"http://www.webservice.peckapp.com/api/Feedback"


//@interface PeckWebserviceAPIClient ()

//@end

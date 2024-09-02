-module(sole_api).

-export([build_modules/0]).
-export([disc_copies_DB/0]).
-export([dataStore/0]).
-export([disc_copies_DB_setup/7]).
-export([tok/0]).
-export([redirect_emoji/1]).
-record(user_database, {node}).
-record(user_data, {first_name, last_name, email, date_of_birth, phone_num, gender, passwd}).
-record(posted_time, {file, time_posted}).
-export([local_ip_v4/0]).
-export([hash_256/1]).
-export([hash_256_A/1]).
-export([first_name/1]).
-export([last_name/1]).
-export([email/1]).
-export([date_of_birth/1]).
-export([phone_number/1]).
-export([gender/1]).
-export([password/1]).
-export([delete_account/1]).
-export([make_name_file/2]).
-export([read_name_file/1]).
-include_lib("stdlib/include/qlc.hrl").
-include_lib("kernel/include/file.hrl").
%%-include_lib("xmerl/include/xmerl.hrl").

-export([uppercase_to_lowercase/1]).
-export([validate_num/1]).
-export([divide/2]).
-export([string_to_int/2]).
-export([validate_card/1]).
-export([post_time/1]).
-export([what_time_posted/1]).
-export([was_time_posted/1]).
-export([tell_time/0]).
-export([tell_time_html/0]).
-export([usd_exchange/1]).
-export([multimedia_dir/0]).
-export([store_media/0]).
-export([store_media_image/1]).
-export([username/2, username/1]).
-export([caption/1, caption/0]).
%% Deleting early Image files!!!
-export([caption_post/1]).
-export([caption_post/0]).
-export([deleting_files/0]).
-export([moving_profile_photo/1]).
-export([check_file/1]).
-export([video/1]).
-export([rename_video_file/1]).
-export([rename_image_file/1]).
-export([read_file_type/1]).
-export([newsfeed_log_image/1]).
-export([newsfeed_log_video/1]).
-export([show_image/1]).
-export([show_video/2]).

%% videos
-export([count_number_of_posts/1]).
-export([number_of_posts/2]).
-export([how_many_posts/1]).
-export([extract_number_of_posts/1]).


%% functions for video post feeds.

-export([records_of_videos_on_a_file/1]).
-export([hash_post/2]).
-export([delete_previous_file/1]).
-export([if_this_file_exist_delete/1]).
-export([check_for_posted_files/1]).
-export([show_hashed_file/1]).
-export([new_post_old_post/1]).
-export([write_newsfeed_to_file/1]).
-export([read_newsfeed_to_file/0]).
-export([if_upload/0]).
-export([first_post/1]).
-export([lets_see_if_first_post_exist/1]).
-export([image/1]).
-export([uploads_file/1]).

-export([read_all_videos_file/1]).

%% For no posts
-export([social_media_file/1]).
-export([no_media/1]).
-export([file_must_exists/1]).


build_modules() ->
        c:lc([sole_bitcoin_hashes, sole_socialID, sole_comment, tokens, post_email, sole_br, sole_profile, count, sole_media]),
        dataStore().

                    disc_copies_DB() ->
                      mnesia:create_schema([node()]),
                      mnesia:start(),
                      mnesia:create_table(user_database, [{attributes, record_info(fields, user_database)}]),
                           Data = fun() ->
                           mnesia:write(
                           #user_database{ _ = node })
                      end,

                      mnesia:transaction(Data),
                      {ok, File} = file:open("names.erl", [read, write]),
                      io:format(File, "~s~n", ["-module(names)."]),
                      io:format(File, "~s~n", ["-compile(export_all)."]),
                      io:format(File, "~s~n", [""]),
                      io:format(File, "~s~n", [""]),
                      io:format(File, "~s~n", [""]).
dataStore() ->
file:write_file("sole_data.yaws", ["<?xml version='1.0' encoding='utf-8'?>
<dataStore>
<erl>
  out(A) ->
  L = yaws_api:parse_post(A),
  {ehtml, f('~p', [L])}.
</erl>
<erl>

-record(session, {user, passwd, udata}).
  out(A) ->
  L = yaws_api:parse_post(A),
  B = {html, f('~p', [lists:nth(1, L)])},
  B1 = element(2, B),
  B2 = lists:append(B1),
  B3 = lists:nth(2, B2),
  B4 = lists:nth(3, B3),
  B5 = string:sub_string(B4, 2, $0),
  B6 = lists:last(string:tokens(B5, sole_api:tok())),
  C = {html, f('~p', [lists:nth(2, L)])},
  C1 = element(2, C),
  C2 = lists:append(C1),
  C3 = lists:nth(2, C2),
  C4 = lists:nth(3, C3),
  C5 = string:sub_string(C4, 2, $0),
  C6 = lists:last(string:tokens(C5, sole_api:tok())),
  D = {html, f('~p', [lists:nth(3, L)])},
  D1 = element(2, D),
  D2 = lists:append(D1),
  D3 = lists:nth(2, D2),
  D4 = lists:nth(3, D3),
  D5 = string:sub_string(D4, 2, $0),
  D6 = lists:last(string:tokens(D5, sole_api:tok())),
  E = {html, f('~p', [lists:nth(4, L)])},
  E1 = element(2, E),
  E2 = lists:append(E1),
  E3 = lists:nth(2, E2),
  E4 = lists:nth(3, E3),
  E5 = string:sub_string(E4, 2, 4),
  E6 = lists:last(string:tokens(E5, sole_api:tok())),
  F = {html, f('~p', [lists:nth(5, L)])},
  F1 = element(2, F),
  F2 = lists:append(F1),
  F3 = lists:nth(2, F2),
  F4 = lists:nth(3, F3),
  F5 = string:sub_string(F4, 2, 4),
  F6 = lists:last(string:tokens(F5, sole_api:tok())),
  G = {html, f('~p', [lists:nth(6, L)])},
  G1 = element(2, G),
  G2 = lists:append(G1),
  G3 = lists:nth(2, G2),
  G4 = lists:nth(3, G3),
  G5 = string:sub_string(G4, 2, 5),
  H = {html, f('~p', [lists:nth(7, L)])},
  H1 = element(2, H),
  H2 = lists:append(H1),
  H3 = lists:nth(2, H2),
  H4 = lists:nth(3, H3),
  H5 = string:sub_string(H4, 2, 5),
  H6 = lists:last(string:tokens(H5, sole_api:tok())),
  I = {html, f('~p', [lists:nth(8, L)])},
  I1 = element(2, I),
  I2 = lists:append(I1),
  I3 = lists:nth(2, I2),
  I4 = lists:nth(3, I3),
  I5 = string:sub_string(I4, 2, $0),
  I6 = lists:last(string:tokens(I5, sole_api:tok())),
  J = {html, f('~p', [lists:nth(9, L)])},
  J1 = element(2, J),
  J2 = lists:append(J1),
  J3 = lists:nth(2, J2),
  J4 = lists:nth(3, J3),
  J5 = string:sub_string(J4, 2, $0),
  J6 = lists:last(string:tokens(J5, sole_api:tok())),
  K = {html, f('~p', [lists:nth(10, L)])},
  K1 = element(2, K),
  K2 = lists:append(K1),
  K3 = lists:nth(2, K2),
  K4 = lists:nth(3, K3),
  K5 = string:sub_string(K4, 2, $0),
  K6 = lists:last(string:tokens(K5, sole_api:tok())),
  LL = {html, f('~p', [lists:nth(11, L)])},
  LL1 = element(2, LL),
  LL2 = lists:append(LL1),
  LL3 = lists:nth(2, LL2),
  LL4 = lists:nth(3, LL3),
  LL5 = string:sub_string(LL4, 2, $0),
  LL6 = lists:last(string:tokens(LL5, sole_api:tok())),
  error_logger:info_msg('~p~n', [sole_api:disc_copies_DB_setup(B6, C6, D6, E6 ++ " ++ "\"" ++ "/" ++ "\"" ++ " ++ F6 ++ " ++ "\"" ++ "/" ++ "\"" ++ " ++ G5, " ++ "\"" ++ "(" ++ "\"" ++ " ++ H6 ++ " ++ "\"" ++ ") " ++ "\"" ++ " ++ I6 ++ " ++ "\"" ++ "-" ++ "\"" ++ " ++ J6, K6, sole_api:hash_256_A(LL6))]),
  error_logger:info_msg('~p~n', [sole_api:make_name_file(B6, D6)]),
  S = #session{user = B6,
               passwd = sole_api:hash_256_A(LL6),
               udata = []},
               %% Now register the session to the session server
               Cookie = yaws_api:new_cookie_session(S),
               [
                 yaws_api:set_cookie(B6,Cookie,[])],
                 sole_api:redirect_emoji(B6).
</erl>
</dataStore>"]).




disc_copies_DB_setup(First_Name, Last_Name, Email, Date_of_birth, Phone_dial, Gender, Password) ->
       mnesia:create_table(user_data, [{attributes, record_info(fields, user_data)}]),


       User_Database = fun() ->
       mnesia:write(
       #user_data{first_name = First_Name,
                  last_name = Last_Name,
                  email = Email,
                  date_of_birth = Date_of_birth,
                  phone_num = Phone_dial,
                  gender = Gender,
                  passwd = Password})
       end,

       mnesia:transaction(User_Database),
       write_to_disk(First_Name, Last_Name, Email, Date_of_birth, Phone_dial, Gender, Password).

write_to_disk(First_Name, Last_Name, Email, Date_of_birth, Phone_dial, Gender, Password) ->
       file:write_file(Phone_dial ++ ".txt", [First_Name]),
       {ok, Store_Data} = file:open("names.erl", [write, append]),
       io:format(Store_Data, "~s~n", ["name_" ++ Password ++ "() ->"]),
       io:format(Store_Data, "~s~n", ["{" ++ "\"" ++ First_Name ++ "\"" ++ ", " ++ "\"" ++ Last_Name ++ "\"" ++ ", "]),
       io:format(Store_Data, "~s~n", ["\"" ++ Email ++ "\"" ++ ", " ++ "\"" ++ Date_of_birth ++ "\"" ++ ", "]),
       io:format(Store_Data, "~s~n", ["\"" ++ Phone_dial ++ "\"" ++ ", " ++ "\"" ++ Gender ++ "\"" ++ ", " ++ "\"" ++ Password ++ "\"" ++ "}. "]),
       c:c(names).

tok() ->
 "\"".

redirect_emoji(Arg) ->
[{redirect, "/account_gen_" ++ Arg ++ ".yaws"}].

local_ip_v4() ->
    {ok, Addrs} = inet:getifaddrs(),
    hd([
         Addr || {_, Opts} <- Addrs, {addr, Addr} <- Opts,
         size(Addr) == 4, Addr =/= {127,0,0,1}
    ]).

hash_256(Data) ->
       <<X:256>> = crypto:hash(sha256, Data),
       io_lib:format("~64.16.0b", [X]).



hash_256_A(Data_A) ->
       <<X:256>> = crypto:hash(sha256, Data_A),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_A++ "abfh",
       hash_256_B(Y).
hash_256_B(Data_B) ->
       <<X:256>> = crypto:hash(sha256, Data_B),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_B++ "9077h",
       hash_256_C(Y).
hash_256_C(Data_C) ->
       <<X:256>> = crypto:hash(sha256, Data_C),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_C++ "quiop",
       hash_256_D(Y).
hash_256_D(Data_D) ->
       <<X:256>> = crypto:hash(sha256, Data_D),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_D++ "kkp33fg",
       hash_256_E(Y).
hash_256_E(Data_E) ->
       <<X:256>> = crypto:hash(sha256, Data_E),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_E++ "kophbc",
       hash_256_F(Y).
hash_256_F(Data_F) ->
       <<X:256>> = crypto:hash(sha256, Data_F),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_F++ "jdgf890",
       hash_256_G(Y).
hash_256_G(Data_G) ->
       <<X:256>> = crypto:hash(sha256, Data_G),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_G++ "qaczxnu",
       hash_256_H(Y).
hash_256_H(Data_H) ->
       <<X:256>> = crypto:hash(sha256, Data_H),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_H++ "kk12345",
       hash_256_I(Y).
hash_256_I(Data_I) ->
       <<X:256>> = crypto:hash(sha256, Data_I),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_I++ "1BabCDcd",
       hash_256_J(Y).
hash_256_J(Data_J) ->
       <<X:256>> = crypto:hash(sha256, Data_J),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_J++ "abcdefghijklmnopqrstuVwxyz",
       hash_256_K(Y).
hash_256_K(Data_K) ->
       <<X:256>> = crypto:hash(sha256, Data_K),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_K++ "people_always_hate",
       hash_256_L(Y).
hash_256_L(Data_L) ->
       <<X:256>> = crypto:hash(sha256, Data_L),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_L++ ",.?",
       hash_256_M(Y).
hash_256_M(Data_M) ->
       <<X:256>> = crypto:hash(sha256, Data_M),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_M++ "jjjjjjmmmmm",
       hash_256_N(Y).
hash_256_N(Data_N) ->
       <<X:256>> = crypto:hash(sha256, Data_N),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_N++ "PaperMoney",
       hash_256_O(Y).
hash_256_O(Data_O) ->
       <<X:256>> = crypto:hash(sha256, Data_O),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_O++ "TTTWWW",
       hash_256_P(Y).
hash_256_P(Data_P) ->
       <<X:256>> = crypto:hash(sha256, Data_P),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_P++ "KRS1",
       hash_256_Q(Y).
hash_256_Q(Data_Q) ->
       <<X:256>> = crypto:hash(sha256, Data_Q),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_Q++ "ZH1",
       hash_256_R(Y).
hash_256_R(Data_R) ->
       <<X:256>> = crypto:hash(sha256, Data_R),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_R++ "HOT 97",
       hash_256_S(Y).
hash_256_S(Data_S) ->
       <<X:256>> = crypto:hash(sha256, Data_S),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_S++ "Bad Bitch",
       hash_256_T(Y).
hash_256_T(Data_T) ->
       <<X:256>> = crypto:hash(sha256, Data_T),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_T++ "I love you back",
       hash_256_U(Y).
hash_256_U(Data_U) ->
       <<X:256>> = crypto:hash(sha256, Data_U),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_U++ "Its better to be safe then sorry",
       hash_256_V(Y).
hash_256_V(Data_V) ->
       <<X:256>> = crypto:hash(sha256, Data_V),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_V++ "Praise the most high",
       hash_256_W(Y).
hash_256_W(Data_W) ->
       <<X:256>> = crypto:hash(sha256, Data_W),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_W++ "Barack Obama",
       hash_256_X(Y).
hash_256_X(Data_X) ->
       <<X:256>> = crypto:hash(sha256, Data_X),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_X++ "Michelle Obama",
       hash_256_Y(Y).
hash_256_Y(Data_Y) ->
       <<X:256>> = crypto:hash(sha256, Data_Y),
       io_lib:format("~64.16.0b", [X]),
       Y = Data_Y++ "Ronald McDonald",
       hash_256_Z(Y).
hash_256_Z(Data_Z) ->
       <<X:256>> = crypto:hash(sha256, Data_Z),
       io_lib:format("~64.16.0b", [X]).

first_name(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(2, New_tuple).

last_name(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(3, New_tuple).

email(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(4, New_tuple).

phone_number(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(6, New_tuple).

date_of_birth(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(5, New_tuple).

gender(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(7, New_tuple).

password(Name) ->
  Data = mnesia:transaction( fun() -> mnesia:read(user_data, Name) end),
  Table = element(2, Data),
  New_tuple = lists:last(Table),
  element(8, New_tuple).

delete_account(Name) ->
  Delete=#user_data{first_name = Name, _ = '_'},
  Fun = fun() ->
              List = mnesia:match_object(Delete),
              lists:foreach(fun(X) ->
                                    mnesia:delete_object(X)
                            end, List)
      end,
  mnesia:transaction(Fun),
  file:delete("commercial" ++ Name ++ ".yaws"),
  file:delete("commercial5_" ++ Name ++ ".yaws"),
  file:delete("comthru_pay_" ++ Name ++ ".yaws"),
  file:delete("invalid_" ++ Name ++ ".yaws"),
  file:delete("stripe_account_" ++ Name ++ ".yaws"),
  file:delete("confirmation_page_" ++ Name ++ ".yaws"),
  file:delete("save_posts_" ++ Name ++ ".yaws"),
  file:delete("user_home_" ++ Name ++ ".yaws"),
  file:delete("post_media_" ++ Name ++ ".yaws"),
  file:delete("upload_photo_" ++ Name ++ ".yaws"),
  file:delete("file_upload_" ++ Name ++ ".yaws"),
  file:delete("make_video_" ++ Name ++ ".yaws"),
  file:delete("video_stream_transmission_" ++ Name ++ ".yaws"),
  file:delete("file_post_" ++ Name ++ ".yaws"),
  file:delete("delete_user_" ++ Name ++ ".yaws"),
  file:delete("delete_card_" ++ Name ++ ".yaws"),
  file:delete("online_name_" ++ Name ++ ".yaws"),
  file:delete("profile_name_" ++ Name ++ ".yaws"),
  file:delete("online_image_" ++ Name ++ ".yaws"),
  file:delete("image1_" ++ Name ++ ".yaws"),
  file:delete("u_photo_" ++ Name ++ ".yaws"),
  file:delete("account_gen_" ++ Name ++ ".yaws"),
  file:delete("update_profile_" ++ Name ++ ".yaws"),
  file:delete("image_" ++ Name ++ ".yaws"),
  file:delete("upload_profile_photo_" ++ Name ++ ".yaws"),
  file:delete("self_" ++ Name ++ ".yaws"),
  file:delete("update_profile_photo_" ++ Name ++ ".yaws").



make_name_file(Name, Email) ->
  Num = count:counting(),
  sole_api:username("", Name),
   file:write_file("commercial" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
   <!DOCTYPE html>
   <html lang='en'>

       <head>
        <title>your-post-feed</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <link rel='stylesheet' href='commercial.css'>
        <link rel='stylesheet' href='payment.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.13/css/all.css' integrity='sha384'  crossorigin='anonymous'>
        <link rel='stylesheet' href='video-controls.css'>
          <style>
            .paragraph { background-color: #fff; border-radius: 15px; width: 500px;}
            .Mouth { display: none; }
          </style>
       </head>
       <style>
         .overflow { height:1000px; overflow: auto; position: relative; }
         html { scroll-behavior: smooth; }
         .bar { display: none; position: absolute; }
         .window { position : relative; width : 200px; height : 100px; border-radius : 15px; background-color : #fff; display: none; }
       </style>
       <body>
         <br>
         <center><div class=dot0><br><img src=images_folder/comthru.png width=50% height=50%></div></center>

           <center align='center'>
             <table cellspacing='0' width='98%' style='bottom: 0px; position: absolute;'>
               <td>
             <div class='o'><br><img onclick='stop_stream()' src='images_folder/Personal_profile_icon.png' 'width=40px height=40px'></div> </td><td> <div class='o'><a href='javascript:history.back()'><br><img src='images_folder/Home.png' 'width=40px height=40px'></a></div>
             </td>
           </table>
           </center>
               <form action='user_accounts.yaws' method='POST'><input type='submit' style='color: #FFF; border-width: 0px; border-radius: 50%; height: 50px; width: 50px; position: relative; background-image: url(images_folder/search_icon.png); background-position: center; background-size: cover;'><input class=form name='user' type='text' size=36% placeholder=Search...></form>
             <div class='overflow'>
         <script src='jquery.min.map'></script>
         <script>
           var WebSocket = window.WebSocket || window.MozWebSocket;
           var socket = new WebSocket('wss://comthru.com/get_tokens.yaws');
         </script>
         <script>
         const sec = 0.000000;
         const count = 0;
         
         function seconds () {
                     sec += 0.000001;
                }
         function counting () {
                     count += 1;
                }
         </script>

   <br>
   <br>
   <br>
   <br>
   <br>
     <erl>
       out(Arg) ->
         sole_api:file_must_exists(" ++ "\"" ++ Name ++ "\"" ++ ").
     </erl>
     <erl>
       out(Arg) ->
         sole_api:new_post_old_post(" ++ "\"" ++ Name ++ "\"" ++ ").
       </erl>
       <erl>
         out(Arg) ->
         {ehtml, {p, [{id, sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ")}, {style, 'color: #F5A9F2;'}], " ++ "\"" ++ Email ++ "\"" ++ " }}.
       </erl>
       <erl>
         out(Arg) ->
         {ehtml, {p, [{style, 'color: #F5A9F2;'}], " ++ "\"" ++ Num ++ "\"" ++ " }}.
       </erl>

   <script>
     Share = {
   facebook: function(purl, ptitle, pimg, text) {
   url = 'http://www.facebook.com/sharer.php?s=100';
   url += '&p[title]=' + encodeURIComponent(ptitle);
   url += '&p[summary]=' + encodeURIComponent(text);
   url += '&p[url]=' + encodeURIComponent(purl);
   url += '&p[images][0]=' + encodeURIComponent(pimg);
   Share.popup(url);
   },
   twitter: function(purl, ptitle) {
   url = 'http://twitter.com/share?';
   url += 'text=' + encodeURIComponent(ptitle);
   url += '&url=' + encodeURIComponent(purl);
   url += '&counturl=' + encodeURIComponent(purl);
   Share.popup(url);
   },
   popup: function(url) {
   window.open(url,'','toolbar=0,status=0,width=626, height=436');
   }
   };
   </script>
   <script>
     var video = document.querySelector('.video');
     var juice = document.querySelector('.orange-juice');
     var btn = document.getElementById('play-pause');

     function togglePlayPause() {
        if (video.paused) {
        btn.className = 'pause';
        video.play();
        } else {
        btn.className = 'play';
        video.pause();
        }
     }

     btn.onclick = function() {
        togglePlayPause();
     };

     video.addEventListener('timeupdate', function() {
        var juicePos = video.currentTime / video.duration;
        juice.style.width = juicePos * 100 + '%';
        if (video.ended) {
           btn.className = 'play';
        }
     });
   </script>


         <script>
         function play() {
           var audio = new Audio('voice/help.m4a');
           audio.play();
         }
         function display2() {
           var display = document.querySelector('.window2').style.display = 'block';
           var close = document.querySelector('.window').style.display = 'none';
         }
         function cancel() {
           var cancel = document.querySelector('.window2').style.display = 'none';
         }
         function search_bar() {
           var search_bar = document.querySelector('.bar').style.display = 'block';
         }
         </script>
         <script>
         const WebSocket = window.WebSocket || window.MozWebSocket;
           const br = new window.BroadcastChannel('send_numbr');
           const number = document.getElementsByTagName('p');

           function answer_call() {
             window.location.href = `${number[number.length - 1].innerHTML}.yaws`;
           }

           br.onmessage = (msg) => {
               let txt=document.querySelector('#txtMsg');
               txt.value=`${event.data.pNumber1}`;
               if (txt.value===`${number[number.length - 1].innerHTML}`){
               answer_call();
             }else{
                 null;
               }
           }
         </script>

         <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>



         <erl>
           out(_Arg) ->
         {html, " ++ "\"" ++ "<audio id=adioPlay><script src='myAudio.js'></script></audio>" ++ "\"" ++ "}.
         </erl>

       </body>


   </html>"]),
   file:write_file("commercial" ++ Num ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
   <!DOCTYPE html>
   <html lang='en'>

       <head>
        <title>your-post-feed</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <link rel='stylesheet' href='commercial.css'>
        <link rel='stylesheet' href='payment.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.13/css/all.css' integrity='sha384'  crossorigin='anonymous'>
        <link rel='stylesheet' href='video-controls.css'>
          <style>
            .paragraph { background-color: #fff; border-radius: 15px; width: 500px;}
            .Mouth { display: none; }
          </style>
       </head>
       <style>
         .overflow { height:1000px; overflow: auto; position: relative; }
         html { scroll-behavior: smooth; }
         .bar { display: none; position: absolute; }
         .window { position : relative; width : 200px; height : 100px; border-radius : 15px; background-color : #fff; display: none; }
       </style>
       <body>
         <br>
         <center><div class=dot0><br><img src=images_folder/comthru.png width=50% height=50%></div></center>


           <center align='center'>
             <table cellspacing='0' width='98%' style='bottom: 0px; position: absolute;'>
               <td>
             <div class='o'><br><img onclick='stop_stream()' src='images_folder/Personal_profile_icon.png' 'width=40px height=40px'></div> </td><td> <div class='o'><a href='save_posts_" ++ Name ++ ".yaws'><br><img src='images_folder/Home.png' 'width=40px height=40px'></a></div>
             </td>
           </table>
           </center>
               <form action='user_accounts.yaws' method='POST'><input type='submit' style='color: #FFF; border-width: 0px; border-radius: 50%; height: 50px; width: 50px; position: relative; background-image: url(images_folder/search_icon.png); background-position: center; background-size: cover;'><input class=form name='user' type='text' size=36% placeholder=Search...></form>
             <div class='overflow'>
         <script src='jquery.min.map'></script>
         <script>
           var WebSocket = window.WebSocket || window.MozWebSocket;
           var socket = new WebSocket('wss://comthru.com/get_tokens.yaws');
           var media_socket = new WebSocket('wss://comthru.com/newsfeed_control.yaws');
           var time = new WebSocket('wss://comthru.com/edit_" ++ Name ++ "_news.yaws');
         </script>
         <script>
         const sec = 0.000000;
         const count = 0;
         
         function seconds () {
                     sec += 0.000001;
                }
         function counting () {
                     count += 1;
                }
         </script>

   <br>
   <br>
   <br>
   <br>
   <br>
     <erl>
       out(Arg) ->
         sole_api:file_must_exists(" ++ "\"" ++ Name ++ "\"" ++ ").
     </erl>
     <erl>
       out(Arg) ->
         sole_api:social_media_file(" ++ "\"" ++ Name ++ "\"" ++ ").
       </erl>
       <erl>
         out(Arg) ->
         {ehtml, {p, [{id, sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ")}, {style, 'color: #F5A9F2;'}], " ++ "\"" ++ Name ++ "\"" ++ " }}.
       </erl>
       <erl>
         out(Arg) ->
         {ehtml, {p, [{id, " ++ "\"" ++ "commercial" ++ "\"" ++ "}, {style, 'color: #F5A9F2;'}], " ++ "\"" ++ Num ++ "\"" ++ " }}.
       </erl>

   <script>
     Share = {
   facebook: function(purl, ptitle, pimg, text) {
   url = 'http://www.facebook.com/sharer.php?s=100';
   url += '&p[title]=' + encodeURIComponent(ptitle);
   url += '&p[summary]=' + encodeURIComponent(text);
   url += '&p[url]=' + encodeURIComponent(purl);
   url += '&p[images][0]=' + encodeURIComponent(pimg);
   Share.popup(url);
   },
   twitter: function(purl, ptitle) {
   url = 'http://twitter.com/share?';
   url += 'text=' + encodeURIComponent(ptitle);
   url += '&url=' + encodeURIComponent(purl);
   url += '&counturl=' + encodeURIComponent(purl);
   Share.popup(url);
   },
   popup: function(url) {
   window.open(url,'','toolbar=0,status=0,width=626, height=436');
   }
   };
   </script>
   <script>
     var video = document.querySelector('.video');
     var juice = document.querySelector('.orange-juice');
     var btn = document.getElementById('play-pause');

     function togglePlayPause() {
        if (video.paused) {
        btn.className = 'pause';
        video.play();
        } else {
        btn.className = 'play';
        video.pause();
        }
     }

     btn.onclick = function() {
        togglePlayPause();
     };

     video.addEventListener('timeupdate', function() {
        var juicePos = video.currentTime / video.duration;
        juice.style.width = juicePos * 100 + '%';
        if (video.ended) {
           btn.className = 'play';
        }
     });
   </script>


         <script>
         function play() {
           var audio = new Audio('voice/help.m4a');
           audio.play();
         }
         function display2() {
           var display = document.querySelector('.window2').style.display = 'block';
           var close = document.querySelector('.window').style.display = 'none';
         }
         function cancel() {
           var cancel = document.querySelector('.window2').style.display = 'none';
         }
         function search_bar() {
           var search_bar = document.querySelector('.bar').style.display = 'block';
         }
         </script>
         <script>
         const WebSocket = window.WebSocket || window.MozWebSocket;
           const br = new window.BroadcastChannel('send_numbr');
           const number = document.getElementsByTagName('p');

           function answer_call() {
             window.location.href = `${number[number.length - 1].innerHTML}.yaws`;
           }

           br.onmessage = (msg) => {
               let txt=document.querySelector('#txtMsg');
               txt.value=`${event.data.pNumber1}`;
               if (txt.value===`${number[number.length - 1].innerHTML}`){
               answer_call();
             }else{
                 null;
               }
           }
         </script>

         <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>



         <erl>
           out(_Arg) ->
         {html, " ++ "\"" ++ "<audio id=adioPlay><script src='myAudio.js'></script></audio>" ++ "\"" ++ "}.
         </erl>

       </body>


   </html>"]),
   file:write_file("edit_" ++ Name ++ "_news.yaws", ["<?xml version='1.0' encoding='utf-8'?>
<websocket>
<erl>


  get_upgrade_header(#headers{other=L}) ->
      lists:foldl(fun({http_header,_,KO,_,V}, undefined) ->
                          K = case is_atom(KO) of
                                  true ->
                                      atom_to_list(KO);
                                  false ->
                                      KO
                              end,
                          case string:to_lower(K) of
                              " ++ "\"" ++ "Upgrade" ++ "\"" ++ " ->
                                  true;
                              _ ->
                                  false
                          end;
                      (_, Acc) ->
                           Acc
                  end, false, L).


%%------------------------------------------------------------------------------

out(Arg) ->
    case get_upgrade_header(Arg#arg.headers) of
    true ->
        error_logger:warning_msg(" ++ "\"" ++ "Not a web socket client~n" ++ "\"" ++ "),
        {content, " ++ "\"" ++ "text/plain" ++ "\"" ++ ", " ++ "\"" ++ "You're not a web sockets client! Go away!" ++ "\"" ++ "};
    false ->
        error_logger:info_msg(" ++ "\"" ++ "Starting web socket~n" ++ "\"" ++ "),
        {websocket, sole_algorithm_" ++ Num ++ ", []}
    end.

</erl>
</websocket>"]),
   file:write_file("sole_algorithm_" ++ Num ++ ".erl", ["-module(sole_algorithm_" ++ Num ++ ").
 -record(post, {post_niche, boolean}).
 -export([handle_message/1]).
 -export([extract_boolean/1]).
 
 
 handle_message({text, Message}) ->
      io:format(" ++ "\"" ++ "~p:~p Data received was ~p~n" ++ "\"" ++ ", 
             [?MODULE, ?LINE, Message]),
             process(Message),
      {reply, {text, <<Message/binary>>}}.
      
      
 process(Message) ->
      Post_niche = "]),
   file:write_file("commercial5_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
   <!DOCTYPE html>
   <stream>
   <html>
       <head>
        <title>option_page</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
        <link rel='stylesheet' href='commercial5.css'>
        <link rel='stylesheet' href='payment.css'>
          <style>
            .Mouth { display: none; }
            .sentence { width: 700px; border-radius: 15px; height:100px; background-color: #FFF; }
            .window { width: 500px; height: 350px; }
          </style>
       </head>
       <body>
       <center><div class=dot><br><img onclick='display();' src=images_folder/comthru.png width=50% height=50%></div></center>
           <center><div style='height: 480px; top: 200px; align-items: center; position: absolute;' class=window3><p class=paragraph>This platform is free to use. To make money, tap logo up top, then tap pay service, and submit your debit card details. Whenever you receive a like on content you've posted, you'll recieve $1.00 USD. Make sure your card excepts USD.</p>
         <div class='button'><center><p class='paragraph' onclick='dont_show();'>Click Me</p></center></div></div></center>
         <div class='menu'>
           <center align='center'>
             <table cellspacing='0' width='98%' style='bottom: 0px; position: absolute;'>
               <td>
                 <erl>
                   out(Arg) ->
                   {ehtml, {'div', [{class, 'circle'}], {a, [{href, 'commercial" ++ Num ++ ".yaws'}], {br, [], {img, [{src, 'images_folder/Personal_profile_icon.png'}, {width, '40px'}, {height, '40px'}]}}}}}.
                 </erl>
             </td><td> <div class='circle'><br><img src='images_folder/Home.png' 'width=40px height=40px'></div>
             </td>
           </table>
         </center></div>
           <center><div class='window'><table><tr><p class='paragraph' style='color: #101010;'>Do you want to submit debit card details, and potentially earn money, or do you want to delete debit card account.</p></tr><tr><table><td><div class='button'><center><p class='paragraph' onclick='go_to_page();'>Pay Service</p></center></div></td><td><div class='button'><center><a href='delete_card_" ++ Name ++ ".yaws' style='color: #fff'><p class='paragraph'>Delete Account</p></a></center></div></td></table></tr></table></div></center>
           <center><div class='window2' style='height: 700px;'><p class='paragraph' style='color: #101010; height: 100px;'>Type in Bitcoin address</p>
           <center>
             <erl>
               out(Arg) ->
               {ehtml, {img, [{src, 'images_folder/frame.png'}, {width, '300px'}, {height, '300px'}]}}.
             </erl>
           </center>
             <erl>
               out(Arg) ->
               {ehtml, {form, [{class, 'form-input4'}, {action, 'sole_database.txt'}, {method, 'post'}], [
               {span, [{class, areaDiv}], [
               {input, [{style, 'height:50px; border-width:5px; border-color: #4e57fc;'}, {id, 'Credit-Card_Info'}, {autofocus, autofocus}, {class, number}, {name, 'Bitcoin_address'}, {type, password}, {'required placeholder', '00000000000000000000'}, {pattern, '[0-9]{3}'}, {'area-label', 'Area-Code'}, {size, '20'}, {minlength, '16'}, {maxlength, '16'}], [{span, [{class, validity}]}]}]}]}}.
             </erl><table><td><div class='button'><center><p class='paragraph' onclick='cancel();'>Type</p></center></div></td><td><div class='button'><center><p class='paragraph'>Take screenshot</p></center></div></td></table>
           </div></center>
           <center>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
   <br><div class='options'>
     <div class=words><p class=paragraph onclick=show();>Click Me!!!</p></div>
     <div class='words'>
   <a href='user_home_" ++ Name ++ ".yaws'><p class='paragraph' style=color:#101010;>User Profile</p></a></div>
   <div class='words'>
   <a href='delete_user_" ++ Name ++ ".yaws'><p class='paragraph' style=color:#101010;>Delete account</p></a></div>
   </td><td width=5%>
   div class='words'><a href='share_qr_code_" ++ Name ++ ".yaws'><p class='paragraph' style=color:#101010;>Share code</p></a></div>
   <div class='words'><a href='log-out.yaws'><p class='paragraph' style=color:#101010;>Log Out</p></a></div>
   </center>
         <script>
         function play() {
           var audio = new Audio('voice/help.m4a');
           audio.play();
         }
         function display() {
           var display = document.querySelector('.window').style.display = 'block';
         }
         function display2() {
           var display = document.querySelector('.window2').style.display = 'block';
           var close = document.querySelector('.window').style.display = 'none';
         }
         function cancel() {
           var cancel = document.querySelector('.window2').style.display = 'none';
         }
         function go_to_page() {
           window.location.href = 'comthru_pay_" ++ Name ++ ".yaws';
         }
         </script>
         <script>
           function show() {
             var display = document.querySelector('.window3').style.display = 'block';
           }
           function dont_show() {
           var close = document.querySelector('.window3').style.display = 'none';
           }
         </script>
         <erl>
           out(Arg) ->
           sole_api:if_this_file_exist_delete(" ++ "\"" ++ Name ++ "\"" ++ ").
         </erl>

         <script>
         const WebSocket = window.WebSocket || window.MozWebSocket;
           const br = new window.BroadcastChannel('send_numbr');
           const number = document.getElementsByTagName('p');

           function answer_call() {
             window.location.href = `${number[number.length - 1].innerHTML}.yaws`;
           }

           br.onmessage = (msg) => {
               let txt=document.querySelector('#txtMsg');
               txt.value=`${event.data.pNumber1}`;
               if (txt.value===`${number[number.length - 1].innerHTML}`){
               answer_call();
             }else{
                 null;
               }
           }
         </script>

         <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>

       </body>


   </html>
   </stream>"]),
   file:write_file("comthru_pay_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
   <!DOCTYPE html>
   <stream>
   <html>
       <head>
        <title>option_page</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
        <link rel='stylesheet' href='commercial5.css'>
        <link rel='stylesheet' href='payment.css'>
          <style>
            .Mouth { display: none; }
            .sentence { width: 700px; border-radius: 15px; height:100px; background-color: #FFF; }
          </style>
       </head>
       <body>
         <center>
           <div class=dot>
             <br>
               <img src=images_folder/comthru.png width=50% height=50%>
             </div>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
           </center>


           <center>
           <div id='payment_form' style='width: 80%; height: 1000px; background-color: #fff; border-radius: 5px; overflow: auto; position: relative;'>
             <form action='card_holder_details.yaws' method='POST'>
               <br>
                 <p class='paragraph' style='float: left;'>First Name</p>
                 <br>
                   <br>
                     <br>
                       <br>
                         <br>
                           <br>
                           <br>
                           <erl>
                out(Arg) ->
                {ehtml,
                {span, [{class, areaDiv}], [
                {input, [{style, " ++ "\"" ++ "height:50px; border-width:5px; border-color: #4e57fc; float: left;" ++ "\"" ++ "}, {class, number}, {name, 'card_holder_name'}, {type, text}, {'value', " ++ "\"" ++  Name ++ "\"" ++ "}, {size, " ++ "\"" ++ "20" ++ "\"" ++ "}], [{span, [{class, validity}]}]}]}}.
              </erl>
             <br>
               <br>
               <br>
               <br>
                 <table><td>
                 <p class='paragraph' style='float: left;'>Card Number</p>
             <erl>
               out(Arg) ->
               {ehtml,
               {span, [{class, areaDiv}], [
               {input, [{style, 'height:30px; border-width:5px; border-color: #4e57fc; float: left;'}, {class, number}, {name, 'credit_card_num'}, {type, password}, {'required placeholder', 'Card Number'}, {size, '20'}, {minlength, '16'}, {maxlength, '16'}], [{span, [{class, validity}]}]}]}}.
             </erl></td>
             <td><img src='images_folder/cards.png' width=70% height=25%></td>
           </table>
                   <table><td width='20%'>
                   <p class='paragraph' style='float: left;'>Expiration</p>
               <erl>
                 out(Arg) ->
                 {ehtml,
                 {span, [{class, areaDiv}], [
                 {input, [{style, 'height:30px; border-width:5px; border-color: #4e57fc; float: left;'}, {class, number}, {name, 'expiration_date'}, {type, text}, {'required placeholder', '00/00'}, {size, '10'}, {minlength, '5'}, {maxlength, '5'}], [{span, [{class, validity}]}]}]}}.
               </erl>
             </td>
                 <td>
                   <p class='paragraph'>CVV</p>
               <erl>
                 out(Arg) ->
                 {ehtml,
                 {span, [{class, areaDiv}], [
                 {input, [{style, 'height:30px; border-width:5px; border-color: #4e57fc;'}, {class, number}, {name, 'security_code'}, {type, 'password'}, {'required placeholder', '***'}, {size, '10'}, {minlength, '3'}, {maxlength, '3'}], [{span, [{class, validity}]}]}]}}.
               </erl>
             </td>
           </table>
           <br>
               <br>
               <br>
               <br>
               <br>
               <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
             <br>
               <center>
               <erl>
                 out(Arg) ->
                 {ehtml, {a, [{href, ''}], [{'div', [{class, writes}, {style, 'width: 95%; height: 100px; background-color: #4e57fc; bottom: 0px; padding: 0px; border-radius: 5px;'}, {align, center}], [{input, [{type, submit}, {type, button}, {onclick, 'play()'}, {value, 'Create Account'}, {style, 'color:#FFF; border-color:#4e57fc; background-color:#4e57fc; border-width:0px;'}]}]}]}}.
               </erl>
             </center>
           </form>
           </div>
         </center>
     <script src='jquery.min.map'></script>

         <script>
         const WebSocket = window.WebSocket || window.MozWebSocket;
           const br = new window.BroadcastChannel('send_numbr');
           const number = document.getElementById('cell');

           function answer_call() {
             window.location.href = `${cell.innerHTML}.yaws`;
           }

           br.onmessage = (msg) => {
               let txt=document.querySelector('#txtMsg');
               txt.value=`${event.data.pNumber1}`;
               if (txt.value===`${cell.innerHTML}`){
               answer_call();
             }else{
                 null;
               }
           }
         </script>
         <script>
         function play() {
           var audio = new Audio('voice/make_sure.m4a');
           audio.play();
         }
         </script>

         <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>

         <erl>
           out(Arg) ->
           Phone_Number =" ++ "\"" ++ sole_api:phone_number(Name) ++ "\"" ++ ",
           {ehtml, {p, [{class, " ++ "\"" ++ "paragraph" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color: #F5A9F2;" ++ "\"" ++ "}, {id, " ++ "\"" ++ "cell" ++ "\"" ++ "}], Phone_Number}}.
         </erl>

       </body>


   </html>
   </stream>"]),
   file:write_file("share_qr_code_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
   <!DOCTYPE html>
   <stream>
   <html>
       <head>
        <title>QR Code</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
        <link rel='stylesheet' href='commercial5.css'>
        <link rel='stylesheet' href='payment.css'>
          <style>
            .sentence { width: 700px; border-radius: 15px; height:100px; background-color: #FFF; }
            .window3 { width: 500px; height: 350px; }
          </style>
       </head>
       <body>
       <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
           <br>
           <br>
           <br>
           <div class=words style='height: 1000px; width: 800px;'>
           <img src=images_folder/comthru-qr-code.png width=50% height=50%>
           <br>
           <br>
           <br>
           <p class=paragraph>Share this QR Code with others so that others can join this new social network.</p>
         <div class='button'><center><a href='commercial5_" ++ Name ++ ".yaws'><p class='paragraph' style='color:#FFF'>back</p></a></center></div></div>

         <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>

       </body>


   </html>
   </stream>"]),
   file:write_file("topic_niche_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <!DOCTYPE html>
      <stream>
      <html>
          <head>
           <title>option_page</title>
           <meta charset='UTF-8'>
           <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
           <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
             <link rel='stylesheet' href='commercial5.css'>
             <link rel='stylesheet' href='fake_page.css'>
               <link rel='stylesheet' href='sign_up.css'>
             <style>
               .Mouth { display: none; }
               .image { width: 100px; border-radius: 15px; height:100px; background-color: #FFF; }
               .sentence { width: 200px; border-radius: 15px; height:100px; background-color: #FFF; }
               .writing {
                 font-size: 25px;
                 line-height: 62px;
                 font-family: 'Open Sans',sans-serif;
                 border-radius: 15px;
                 background-color: #FFF;
                 width:500px;
               }
               .paragraph {
                 font-size: 25px;
                 line-height: 62px;
                 font-family: 'Open Sans',sans-serif;
               }
               form {
               background-color: #F5A9F2;
               }
             </style>
          </head>
          <body>
          <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
          <div class='over'>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>




            <script src='face.js'></script>
            <script src='figure.js'></script>
      </div><center>
      <form action='store_niche_" ++ Name ++ ".yaws' method='POST'><input class=form name='user' type='text' size=36% color: #101010; placeholder='Describe niche in one word'><br><br><input type='submit' value='niche' style='color: #fff; background-color: #4e57fc; border-width: 0px; width: 600px; background-position: center; background-size: cover;'></form></center>
          </body>


      </html>
      </stream>"]),
      Store_niche = "Arg",
   file:write_file("store_niche_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='UTF-8'?>
<store_niche>
  <erl>
    write(Arg) ->
        file:write_file('niche_" ++ Name ++ ".erl', [" ++ "\"" ++ "-module(niche_" ++ Name ++ ").
        -export([post/0]).
        
        
        post() ->
            " ++ "\"" ++ Store_niche ++ "\"" ++ ".
        c:c(niche_" ++ Name ++ ").
    out(Arg) ->
        L = yaws_api:parse_post(Arg),
        M = lists:nth(1,L),
        N = element(2, M),
        {ehtml, f('~p', [N])},
        error_logger:info_msg('~p~n', [write(N)]).
 </erl>
 <erl>
    out(Arg) ->
        [{redirect, " ++ "\"" ++ "/commerial" ++ Num ++ ".yaws" ++ "\"" ++ "}].
 </erl>
</store_niche>"]), 
   file:write_file("invalid_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <!DOCTYPE html>
      <html>
      <head>
        <title>My Audio</title>
        <meta charset='UTF-8'>
        <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
        <link rel='stylesheet' href='commercial5.css'>
        <link rel='stylesheet' href='person.css'>
        <link rel='stylesheet' href='payment.css'>
          <style>
            .Mouth { display: none; }
          </style>
        </head>
      </head>
      <body>
        <center>
          <div class=dot>
            <br>
              <img src=images_folder/comthru.png width=50% height=50%>
            </div>
          </center>

        <script type='text/javascript'>
        var values, count=0;

        function startTimeout() {
          values = setTimeout(redirect, 5000);
        }
        </script>
        <script>
          function play() {
            var audio = new Audio('voice/account_information.m4a');
            audio.play();
          }
        </script>
        <script>
          function show() {
             document.getElementById('popopen').style.display = 'block';
          }
          function dont_show() {
             document.getElementById('popopen').style.display = 'none';
          }
          function redirect() {
             window.location.href = 'comthru_pay_" ++ Name ++ ".yaws';
          }
        </script>

        <center>
          <br>
            <br>
              <br>
                <br>
                  <br>
                    <br>
                      <br>
                        <br>
                          <br>
                            <br>
                              <br>
                                <br>
                                  <br>
                                    <br>
                                      <br>
                                        <br>
                                          <br>
        <div class='invalid_card' style='width: 50%; height: 50%; background-color: #fff; border-radius: 15px; color: red;'>
          <p class='paragraph'>Invalid Card</p>
        </div>
      </center>
      <erl>
        out(Arg) ->
        {ehtml, {'div', [{class, writes}, {onclick, 'startTimeout(); play();'}, {style, 'width: 100%; height: 100px; background-color: #4e57fc; position: absolute; bottom: 0px; padding: 0px; margin: -8px; border-radius: 5px;'}, {align, center}], [{input, [{value, 'Go Back'}, {type, button}, {style, 'color:#FFF; border-color:#4e57fc; background-color:#4e57fc; border-width:0px;'}]}]}}.
      </erl>
        <script src='face.js'></script>
        <script src='figure.js'></script>
      </body>
      </html>"]),
      file:write_file("stripe_account_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='UTF-8'?>
      <erl>
        out(A) ->
        error_logger:info_msg('~p~n', [tokens:accept_stripe_terms_and_service(" ++ "\"" ++  Email ++ "\"" ++ ")]).
      </erl>
      <erl>
        out(A) ->
        Ret = [{redirect, " ++ "\"" ++ "/confirmation_page_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
      </erl>"]),
      file:write_file("confirmation_page_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <!DOCTYPE html>
      <html>
          <head>
           <title>sign-up</title>
           <meta charset='UTF-8'>
           <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
           <link rel='stylesheet' href='commercial.css'>
           <link rel='stylesheet' href='person.css'>
           <link rel='stylesheet' href='payment.css'>
           <style>
            .paragraph { background-color: #fff; border-radius: 15px; width: 500px;}
            .Mouth { display: none; }
            .bar { width: 50%; height: 50%; }
           </style>
          </head>
          <body>
          <center><div class=dot0><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
              <center>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
              <div class='bar'><p class='paragraph'>Congratulations, you are now a dedicated subscriber to the platform. You can cancel your subscription at any time. Whenever other dedicated subscribers like your content, you'll earn $0.60, and you should receive funds within two business days. To send a like, click the good job icon.</p></div>
              <br>
                <img src='images_folder/good.png' style='border-radius: 15px;' width='100px' height='100px'>
            </center>

                         <erl>
                           out(Arg) ->
                           {ehtml, {a, [{href, 'commercial5_" ++ Name ++ ".yaws'}], [{'div', [{class, writes}, {style, 'width: 60%; height: 50px; background-color: #4e57fc; position: absolute; bottom: 200px; padding: 0px; margin: +204px; border-radius: 5px;'}, {align, center}], [{input, [{value, 'Lets go Back'}, {type, button}, {style, 'color:#FFF; border-color:#4e57fc; background-color:#4e57fc; border-width:0px;'}]}]}]}}.
                         </erl>
          </body>

      </html>"]),
      file:write_file("save_posts_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <save_posts>
      <erl>
        -define(CHECKFILE, sole_api:check_for_posted_files(" ++ "\"" ++ Name ++ "\"" ++ ")).


        out(Arg) ->
        error_logger:info_msg('~p~n', [?CHECKFILE]).
      </erl>
      <erl>
          out(Arg) ->
          Data = sole_api:write_newsfeed_to_file(" ++ "\"" ++ Name ++ "\"" ++ "),
          error_logger:info_msg('~p', [Data]).
        </erl>
        <erl>
          out(Arg) ->
          Compile = c:c(social_media),
          error_logger:info_msg('~p', [Compile]).
        </erl>
      <erl>
        out(A) ->
          Ret = [{redirect, " ++ "\"" ++ "/commercial5_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
        </erl>
      </save_posts>"]),
      file:write_file("user_home_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <!DOCTYPE html>
      <html>
          <head>
           <title>edit-profile</title>
           <meta charset='UTF-8'>
           <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
           <link rel='stylesheet' href='edit.css'>
           <link rel='stylesheet' href='payment.css'>
             <style>
               .Mouth { display: none; }
               .caption { position: absolute; bottom: 1100px; width: 500px; height: 55px; background-color: #fff; border-radius: 10px; display: none;}
             </style>
          </head>
          <body>
            <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
                <br>
                <br>
              <br>
                <center>
              <br>
              <br>
                <br>
                  <center align='center'>
                    <table cellspacing='0' width='100%'>
                      <td>
                    </td>
                  </table>
                  </center>
                  <br>
                    <table cellspacing='0' width='100%'>
                      <td>
                      </td><td> <center>
                      <erl>
                        out(Arg) ->
                        {ehtml, {'div', [{class, words}], [{a, [{href, " ++ "\"" ++ "post_media_" ++ Name ++ ".yaws" ++ "\"" ++ "}], [{p, [{class, " ++ "\"" ++ "paragraph" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color:#101010;" ++ "\"" ++ "}], " ++ "\"" ++ "Make video" ++ "\"" ++ "}]}]}}.
                      </erl>

                    </center> </td><td>
                    </td>
                  </table>
            </center>
              <br>
                <br>
                  <div class='caption'><form action='caption_for_stream.yaws' method='POST'><input type='text' name='caption_post' placeholder='type caption for live stream' size='30'><input type='submit'></form></div>

                <center>
                <br>
                <br>
                <br>
                <div class=sentence style='width: 500px;' align=center><br><div class=write><a href='update_profile_" ++ Name ++ ".yaws' class='paragraph' style='color: #101010;'>profile_photo / name<img align='right' src='images_folder/Personal_profile_icon.png' 'width=40px height=40px'></a></div></div>
                </center>


                <table cellspacing='0' width='98.5%' style='bottom:0px; position: absolute;'>
                  <td>
                    <div class='words' style='background-color: #4e57fc;'><center><p class='paragraph'><a href='commercial5_" ++ Name ++ ".yaws' style=color:#fff;>Back</a></p></center></div></td><td width='5%'>
                    <div class=words style='background-color: #4e57fc;'><center><p class=paragraph><a href='delete_user_" ++ Name ++ ".yaws' style=color:#fff;>Delete Account</a></p></center></div>
                    </td>
                  </table>

                  <script>
                  function play() {
                    var audio = new Audio('voice/help.m4a');
                    audio.play();
                  }
                  function display() {
                    var display = document.querySelector('.window').style.display = 'block';
                  }
                  function display2() {
                    var display = document.querySelector('.window2').style.display = 'block';
                    var close = document.querySelector('.window').style.display = 'none';
                  }
                  function cancel() {
                    var cancel = document.querySelector('.window2').style.display = 'none';
                  }
                  </script>
                  <script>
                    function show_input() {
                      var display = document.querySelector('.caption').style.display = 'block';
                    }
                  </script>
                  <script>
                  function start_stream() {
                    window.location.href = 'start_stream.yaws';
                  }
                  </script>
                  <script>
                  const WebSocket = window.WebSocket || window.MozWebSocket;
                    const br = new window.BroadcastChannel('send_numbr');
                    const number = document.getElementsByTagName('p');

                    function answer_call() {
                      window.location.href = `${number[number.length - 1].innerHTML}.yaws`;
                    }

                    br.onmessage = (msg) => {
                        let txt=document.querySelector('#txtMsg');
                        txt.value=`${event.data.pNumber1}`;
                        if (txt.value===`${number[number.length - 1].innerHTML}`){
                        answer_call();
                      }else{
                          null;
                        }
                    }
                  </script>

                  <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>

                  <erl>
                    out(Arg) ->
                    Phone_Number =" ++ "\"" ++ "" ++ sole_api:phone_number(Name) ++ "" ++ "\"" ++ ",
                    {ehtml, {p, [{class, 'paragraph'}, {style, 'color: #F5A9F2;'}, {id, 'cell'}], Phone_Number}}.
                  </erl>


            <script src='face.js'></script>
            <script src='figure.js'></script>


          </body>

      </html>"]),
      file:write_file("post_media_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <!DOCTYPE html>
      <stream>
      <html>
          <head>
           <title>option_page</title>
           <meta charset='UTF-8'>
           <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
           <meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
             <link rel='stylesheet' href='commercial5.css'>
             <link rel='stylesheet' href='fake_page.css'>
               <link rel='stylesheet' href='sign_up.css'>
             <style>
               .Mouth { display: none; }
               .image { width: 100px; border-radius: 15px; height:100px; background-color: #FFF; }
               .sentence { width: 200px; border-radius: 15px; height:100px; background-color: #FFF; }
               .writing {
                 font-size: 25px;
                 line-height: 62px;
                 font-family: 'Open Sans',sans-serif;
                 border-radius: 15px;
                 background-color: #FFF;
                 width:500px;
               }
               .paragraph {
                 font-size: 25px;
                 line-height: 62px;
                 font-family: 'Open Sans',sans-serif;
               }
             </style>
          </head>
          <body>
          <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
          <div class='over'>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>




            <script src='face.js'></script>
            <script src='figure.js'></script>
      </div>
      <erl>
      out(A) ->
      Form =
        {form, [{enctype, " ++ "\"" ++ "multipart/form-data" ++ "\"" ++ "}, {class, words}, {align, left},
                {method, post},
                {action, " ++ "\"" ++ "upload_photo_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                [{input, [{type, submit}, {class, paragraph}, {style, " ++ "\"" ++ "width: 100%; height: 100px; background-color: #4e57fc; position: absolute; bottom: 0px; padding: 0px; margin: -8px; border-radius: 5px; color: #fff;" ++ "\"" ++ "}, {value, " ++ "\"" ++ "Upload video" ++ "\"" ++ "}]},
                 {input, [{type,file}, {accept, " ++ "\"" ++ "video/*" ++ "\"" ++ "}, {style, " ++ "\"" ++ "width:100px;" ++ "\"" ++ "}, {name, foo}]}]},
      {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
      Form]}}.
      </erl>
          </body>


      </html>
      </stream>"]),
      file:write_file("upload_photo_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <canvas>
      <erl module='upload_" ++ Name ++ "'>
        -record(upload, {
                fd,
                filename,
                last}).

      -define(DIR, " ++ "\"" ++ "multimedia/" ++ "\"" ++ ").


      out(A) when A#arg.state == undefined ->
          State = #upload{},
          multipart(A, State);
      out(A) ->
          multipart(A, A#arg.state).



      err() ->
          {ehtml,
           {p, [], " ++ "\"" ++ "error" ++ "\"" ++ "}}.

      multipart(A, State) ->
          Parse = yaws_api:parse_multipart_post(A),
          case Parse of
              {cont, Cont, Res} ->
                  case addFileChunk(A, Res, State) of
                      {done, Result} ->
                          Result;
                      {cont, NewState} ->
                          {get_more, Cont, NewState}
                  end;
              {result, Res} ->
                  case addFileChunk(A, Res, State#upload{last=true}) of
                      {done, Result} ->
                          Result;
                      {cont, _} ->
                          err()
                  end;
              {error, _Reason} ->
                  err()
          end.



      addFileChunk(A, [{part_body, Data}|Res], State) ->
          addFileChunk(A, [{body, Data}|Res], State);

      addFileChunk(_A, [], State) when State#upload.last==true,
                                       State#upload.filename /= undefined,
                                       State#upload.fd /= undefined ->

          file:close(State#upload.fd),
          %%file:delete([?DIR,State#upload.filename]),
          Res = {ehtml,
                 {p,[], " ++ "\"" ++ "File upload done" ++ "\"" ++ "}},
          {done, Res};

      addFileChunk(A, [], State) when State#upload.last==true ->
          {done, err()};

      addFileChunk(_A, [], State) ->
          {cont, State};

      addFileChunk(A, [{head, {_Name, Opts}}|Res], State ) ->
          case lists:keysearch(" ++ "\"" ++ "filename" ++ "\"" ++ ", 1, Opts) of
              {value, {_, Fname0}} ->
                  Fname = yaws_api:sanitize_file_name(basename(Fname0)),

                  %% we must not put the file in the
                  %% docroot, it may execute uploade code if the
                  %% file is a .yaws file !!!!!
            file:make_dir(?DIR),
            case file:open([?DIR, Fname] ,[write]) of
          {ok, Fd} ->
              S2 = State#upload{filename = Fname,
                    fd = Fd},
              addFileChunk(A, Res, S2);
          Err ->
              {done, err()}
            end;
        false ->
                  addFileChunk(A,Res,State)
          end;

      addFileChunk(A, [{body, Data}|Res], State)
        when State#upload.filename /= undefined ->
          case file:write(State#upload.fd, Data) of
              ok ->
                  addFileChunk(A, Res, State);
              Err ->
                  {done, err()}
          end.


      basename(FilePath) ->
          case string:rchr(FilePath, " ++ "$\\\\" " " " " ++ ") of
              0 ->
                  %% probably not a DOS name
                  FilePath;
              N ->
                  %% probably a DOS name, remove everything after last \
                  string:substr(FilePath, N+1)
          end.
        </erl>
        <erl>
          out(A) ->
          sole_api:video(" ++ "\"" ++ Name ++ "\"" ++ ").
        </erl>
        <erl>
          out(Arg) ->
          Ret = [{redirect, " ++ "\"" ++ "/file_upload_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
        </erl>
      </canvas>"]),
      file:write_file("file_upload_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <erl>
        out(Arg) ->
        sole_api:uploads_file(" ++ "\"" ++ Name ++ "\"" ++ ").
      </erl>
      <erl>
        out(Arg) ->
        sole_api:read_all_videos_file(" ++ "\"" ++ Name ++ "\"" ++ ").
      </erl>
      <erl>
        out(Arg) ->
        [{redirect, " ++ "\"" ++ "/topic_niche" ++ Name ++ ".yaws" ++ "\"" ++ "}].
      </erl>"]),
      file:write_file("make_video_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <stream>
      <!DOCTYPE html>
      <html>
            <head>
              <meta charset='utf-8'>
              <meta http-equiv='X-UA-Compatible' content='IE=edge'>
              <title>webcam-js</title>
              <meta name='viewport' content='width=device-width, initial-scale=1'>
              <link rel='icon' href='data:;base64,iVBORw0KGgo='>
              <link rel='stylesheet' href='cropselect.css'>
              <link href='material-icon.css' rel='stylesheet'>
              <link rel='stylesheet' type='text/css' media='screen' href='webcam-demo.css'>
                <link rel='stylesheet' href='person.css'>
                  <link rel='stylesheet' href='play.css'>
                  <link rel='stylesheet' href='speech-bubble.css'>
              <script src='jquery-3.3.1.min.js'></script>
              <script src='webcam-easy-master/dist/webcam-easy.min.js'></script>
              <style>
                .rec { background-color: red; width: 50px; height: 50px; border-radius: 50%; box-shadow: 0px 0px 1px 1px #0000001a;  display: inline-block; }
                .position { float: left; bottom: 1050px; position: absolute; }
                .pulse { animation: pulse-animation 2s infinite; }
                @keyframes pulse-animation {
                  0% {
                    box-shadow: 0 0 0 0px rgba(0, 0, 0, 0.2);
                  }
                  100% {
                    box-shadow: 0 0 0 30px rgba(0, 0, 0, 0);
                  }
                }
                .hidden {
                display: none;
                }
                #Person { z-index: 1000;}
                .paragraphs {
                display: block;
                }
                .dot {
                 height: 95px;
                 width: 95px;
                 background-color: #FFF;
                 border-radius: 50%;
                 display: inline-block;
                }
              </style>
          </head>
          <body>
            <div class='over'>
            <main id='webcam-app'>
            <div id='webcam-container' class='webcam-container col-12 d-none p-0 m-0'>
              <video id='video' autoplay playsinline width='640' height='1000'></video>
              <canvas id='canvas' class='d-none'></canvas>
            <center>
            <div id='cameraControls' class='cameraControls'>
              <div id='window' class='hidden' style='width: 600px; height: 200px; background-color: #fff; border-radius: 15px;'><p class='paragraph'>To turn your live stream to interactive mode, click the red button. To keep your live stream in default mode, click the green button</p></div>
              <div class='bar' style='width: 600px; height: 80px; background-color: #fff; border-radius: 15px; position: absolute; top: 100%; display: none;'><p class='paragraph'>Click the Rec button for more details</p></div>
              <div class=dot><br><center><a href='video_stream_transmission_" ++ Name ++ ".yaws'><img src=images_folder/comthru.png width='50px' height='50px' style='border-radius: 50%;'></a></center></div>
              <div id='user' style='position: absolute; bottom: 1050px;'>
            </div>
              <table class='position'><td><p class=paragraph style='color: #FFF;'>Rec</p></td><td><div class='rec pulse'></div></td><tr><center>
                  <button id='btn' style='background-color: #101010; border-width: 0px; border-radius: 15px;'><i class='material-icons' style='color: red;'>circle</i></button>
                  <button id='stopbtn' style='background-color: #101010; border-width: 0px; border-radius: 15px;'><i class='material-icons' style='color: green;'>circle</i></button></center></tr></table>
          <script>
            window.onload = function () {
              const parts = [];
              let mediaRecorder;
              navigator.mediaDevices.getUserMedia({ audio: true, video: true }).then(stream => {
                document.getElementById('video').srcObject = stream;
                document.getElementById('video').muted = true;
                document.getElementById('btn').onclick = function () {
                  mediaRecorder = new MediaRecorder(stream);

                  mediaRecorder.start(1000);

                  mediaRecorder.ondataavailable = function (e) {
                    var formdata = parts.push(e.data);
                  }
                }
              });



            document.getElementById('stopbtn').onclick = function () {
              mediaRecorder.stop();
              const blob = new Blob(parts, {
                type: 'live_video/mp4'
              });
              const url = URL.createObjectURL(blob);

              var formData = new FormData();

              formData.append('video', blob);

              $.ajax('video_stream_transmission_" ++ Name ++ ".yaws', {
                method: " ++ "\"" ++ "POST" ++ "\"" ++ ",
                data: formData,
                processData: false,
                contentType: false,
                success: function () {
                        console.log('Upload success');
                },
                error: function () {
                        console.log('Upload failed');
                }
              });
            }
            }
            // ctx is the plotting canvas' context
            // w is the width of the canvas
            ctx.translate(w, 0);
            ctx.scale(-1, 1);

          </script>

            </div>
          </center>
          </div>
        </main>
          <div class='md-overlay'></div>
      <script>
        var video = document.querySelector('#video');

                     if (navigator.mediaDevices.getUserMedia) {
                         navigator.mediaDevices.getUserMedia({ video: true, audio: true })
                                  .then(function (stream) {
                             video.srcObject = stream;
                             video.muted = true;
                         })
                                  .catch(function (err0r) {
                           console.log('Something went wrong!');
                        });
                        }


                        // ctx is the plotting canvas' context
                        // w is the width of the canvas
                        ctx.translate(w, 0);
                        ctx.scale(-1, 1);
      </script>
      </div>
          </body>


      </html>
      </stream>"]),
      file:write_file("video_stream_transmission_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <dataStore>
      <erl>
        -record(upload, {
                fd,
                filename,
                last}).

      -define(DIR, " ++ "\"" ++ "Uploads" ++ "\"" ++ ").


      out(A) when A#arg.state == undefined ->
          State = #upload{},
          multipart(A, State);
      out(A) ->
          multipart(A, A#arg.state).



      err() ->
          {ehtml,
           {p, [], " ++ "\"" ++ "error" ++ "\"" ++ "}}.

      multipart(A, State) ->
          Parse = yaws_api:parse_multipart_post(A),
          case Parse of
              {cont, Cont, Res} ->
                  case addFileChunk(A, Res, State) of
                      {done, Result} ->
                          Result;
                      {cont, NewState} ->
                          {get_more, Cont, NewState}
                  end;
              {result, Res} ->
                  case addFileChunk(A, Res, State#upload{last=true}) of
                      {done, Result} ->
                          Result;
                      {cont, _} ->
                          err()
                  end;
              {error, _Reason} ->
                  err()
          end.



      addFileChunk(A, [{part_body, Data}|Res], State) ->
          addFileChunk(A, [{body, Data}|Res], State);

      addFileChunk(_A, [], State) when State#upload.last==true,
                                       State#upload.filename /= undefined,
                                       State#upload.fd /= undefined ->

          file:close(State#upload.fd),
          %%file:delete([?DIR,State#upload.filename]),
          Res = {ehtml,
                 {p,[], " ++ "\"" ++ "File upload done" ++ "\"" ++ "}},
          {done, Res};

      addFileChunk(A, [], State) when State#upload.last==true ->
          {done, err()};

      addFileChunk(_A, [], State) ->
          {cont, State};

      addFileChunk(A, [{head, {_Name, Opts}}|Res], State ) ->
          case lists:keysearch(" ++ "\"" ++ "filename" ++ "\"" ++ ", 1, Opts) of
              {value, {_, Fname0}} ->
                  Fname = yaws_api:sanitize_file_name(basename(Fname0)),

                  %% we must not put the file in the
                  %% docroot, it may execute uploade code if the
                  %% file is a .yaws file !!!!!
            file:make_dir(?DIR),
            case file:open([?DIR, Fname] ,[write]) of
          {ok, Fd} ->
              S2 = State#upload{filename = Fname,
                    fd = Fd},
              addFileChunk(A, Res, S2);
          Err ->
              {done, err()}
            end;
        false ->
                  addFileChunk(A,Res,State)
          end;

      addFileChunk(A, [{body, Data}|Res], State)
        when State#upload.filename /= undefined ->
          case file:write(State#upload.fd, Data) of
              ok ->
                  addFileChunk(A, Res, State);
              Err ->
                  {done, err()}
          end.


      basename(FilePath) ->
          case string:rchr(FilePath, " ++ "$\\\\" " " " " ++ ") of
              0 ->
                  %% probably not a DOS name
                  filename:basename(FilePath);
              N ->
                  %% probably a DOS name, remove everything after last \
                  basename(string:substr(FilePath, N+1))
          end.
      </erl>
      <erl>
        out(A) ->
        sole_api:video(" ++ "\"" ++ Name ++ "\"" ++ ").
      </erl>
      <erl>
        out(Arg) ->
        Ret = [{redirect, " ++ "\"" ++ "/file_post_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
      </erl>
      </dataStore>"]),
      file:write_file("file_post_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <upload>
      <erl>
        out(Arg) ->
        sole_api:if_upload(" ++ "\"" ++ Name ++ "\"" ++ ").
      </erl>
      <erl>
        out(Arg) ->
        sole_api:read_all_videos_file(" ++ "\"" ++ Name ++ "\"" ++ ").
      </erl>
      <erl>
        out(Arg) ->
        [{redirect, " ++ "\"" ++ "/commercial" ++  Name ++ ".yaws" ++ "\"" ++ "}].
      </erl>
      </upload>"]),
      file:write_file("delete_user_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
      <erl>
        out(Arg) ->
          error_logger:info_msg('~p~n', [sole_api:delete_account(" ++ "\"" ++ Name ++ "\"" ++ ")]).
        </erl>
          <erl>
            out(Arg) ->
            Ret = [{ redirect, " ++ "\"" ++ "/index.yaws" ++ "\"" ++ " }],
          </erl>"]),
          file:write_file("delete_card_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <delete>
            <erl module='delete_card_'" ++ Name ++ ">
              delete_card() ->
                Account = tokens:does_email_have_account(" ++ "\"" ++ Email ++ "\"" ++ "),
                CardID = tokens:see_if_email_have_cardID(" ++ "\"" ++ Email ++ "\"" ++ "),
                Url = " ++ "\"" ++ "curl -X DELETE https://api.stripe.com/v1/accounts/" ++ "\"" ++ " ++ Account ++ " ++ "\"" ++ "/external_accounts/" ++ "\"" ++ " ++ CardID,
                SKey =   " ++ "\"" ++ "-u sk_test_51MdNP0BgUxqa83hRfRXoQIs5vwTXGedFJQ4EstS89QVxmM08ot3T3vF8JPONbrYicClIxOjWrySsl8hl3dpP49Su00sx5fDhoP: " ++ "\"" ++ ",
                os:cmd([Url, SKey]).

              out(Arg) ->
                error_logger:info_msg('~p~n', [delete_card()]).
              </erl>
              <erl>
                out(Arg) ->
                [{redirect, " ++ "\"" ++ "/commercial5_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
              </erl>
          </delete>"]),
          file:write_file("online_name_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <html>
              <head>
               <title>profile name</title>
               <meta charset='UTF-8'>
               <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
               <link rel='stylesheet' href='sign_up.css'>
              </head>
              <body>
              <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
                  <center>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                    <form action='profile_name_" ++ Name ++ ".yaws' method='post'>
                           <erl>
                             out(Arg) ->
                             {ehtml,
                             {input, [{name, profile}, {autofocus, autofocus}, {placeholder, 'Profile Name'}, {size, '31'}, {id, password}, {style, 'height:50px; border-width: 0px; border-radius: 0px;'}]}}.
                           </erl>
                             <erl>
                               out(Arg) ->
                               {ehtml, {'div', [{class, writes}, {style, 'width: 60%; height: 50px; background-color: #4e57fc; position: absolute; bottom: 200px; padding: 0px; margin: +204px; border-radius: 5px;'}, {align, center}], [{input, [{type, submit}, {type, button}, {value, 'profile name'}, {style, 'color:#FFF; border-color:#4e57fc; background-color:#4e57fc; border-width:0px;'}]}]}}.
                             </erl>
                           </form>
                         </center>
              </body>

          </html>"]),
          file:write_file("profile_name_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <erl>
            out(Arg) ->
            L = yaws_api:parse_post(Arg),
            N_List = lists:last(L),
            {ehtml, f('~p', [element(2, N_List)])},
            Extract = element(2, N_List),
            error_logger:info_msg('~p~n', [sole_api:username(Extract, " ++ "\"" ++ Name ++ "\"" ++ ")]).
          </erl>
          <erl>
            out(Arg) ->
            Ret = [{redirect, " ++ "\"" ++ "/online_image_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
          </erl>"]),
          file:write_file("online_image_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <html>
              <head>
               <title>profile image</title>
               <meta charset='UTF-8'>
               <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
               <link rel='stylesheet' href='sign_up.css'>
               <link rel='stylesheet' href='edit.css'>
              </head>
              <body>
              <center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>
                  <center>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                <br>
                  <center>
                    <br>
                  <br>
                    <br>
                      <br>
                        <br>
                          <br>
                          <erl>
                      out(Arg) ->
                      {ehtml, {'div', [{class, 'white_dot'}, {style, 'height: 100px; width: 100px;'}], {center, [], {img, [{src, " ++ "\"" ++ "/Uploads/" ++ "\"" ++ " ++ sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ") ++ " ++ "\"" ++ "_profile.png" ++ "\"" ++ "}, {align, 'center'}, {style, 'height: 100px; width: 100px; border-radius: 50%;'}]}}}}.
                    </erl>
                <br>
                  <br>
                  <erl>
                    out(A) ->
                  Form =
                      {form, [{enctype, " ++ "\"" ++ "multipart/form-data" ++ "\"" ++ "}, {class, words},
                              {method, post},
                              {action, " ++ "\"" ++ "u_photo_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                              [{input, [{type, submit}, {class, paragraph}, {style, " ++ "\"" ++ "color:#fff; background-color: #4e57fc;" ++ "\"" ++ "}, {value, " ++ "\"" ++ "Upload Photo" ++ "\"" ++ "}]},
                              {br, []},
                              {br, []},
                              {br, []},
                               {input, [{type,file}, {accept, " ++ "\"" ++ "image/*" ++ "\"" ++ "}, {style, " ++ "\"" ++ "width:260px;" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color:black;" ++ "\"" ++ "}, {name, foo}]}]},
                  {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
                  Form]}}.
                  </erl>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div><center><p class='paragraph' onclick='startTimeout(); play();' style='color:#fff; position: absolute; width:60%; height:50px; bottom:100px; padding: 0px; margin: +204px; background-color: #4e57fc;'>create profile</p></center></div>
                    <script type='text/javascript'>
                    var values, count=0;

                    function startTimeout() {
                      values = setTimeout(redirect, 17300);
                    }
                    </script>
                    <script>
                      function play() {
                        var audio = new Audio('voice/click_and_read.m4a');
                        audio.play();
                      }
                    </script>
                    <script>
                      function show() {
                         document.getElementById('popopen').style.display = 'block';
                      }
                      function dont_show() {
                         document.getElementById('popopen').style.display = 'none';
                      }
                      function redirect() {
                         window.location.href = 'account_gen_" ++ Name ++ ".yaws';
                      }
                    </script>
                         </center>
              </body>

          </html>"]),
          file:write_file("image1_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <html>
          <head>
              <meta charset='utf-8'>
              <meta http-equiv='X-UA-Compatible' content='IE=edge'>
              <title>webcam-js</title>
              <meta name='viewport' content='width=device-width, initial-scale=+1'>
              <link rel='icon' href='data:;base64,iVBORw0KGgo='>
              <link rel='stylesheet' href='bootstrap.min.css'>
              <link rel='stylesheet' href='cropselect.css'>
              <link href='material-icon.css' rel='stylesheet'>
              <link rel='stylesheet' type='text/css' media='screen' href='webcam-demo.css'>
              <script src='jquery-3.3.1.min.js'></script>
              <link rel='stylesheet' href='cropper.css'>
              <style>
              #canvas {
              }
              .cropper-crop {
               display:none;
               }
               .cropper-bg {
               background: none;
               }
              </style>
          </head>
          <body>
              <main id='webcam-app'>
                  <div class='form-control webcam-start' id='webcam-control'>
                          <label class='form-switch'>
                          <input type='checkbox' id='webcam-switch'>
                          <i></i>
                          <span id='webcam-caption'>Click to Start Camera</span>
                          </label>
                          <button id='cameraFlip' class='btn d-none'></button>
                  </div>

                  <div id='errorMsg' class='col-12 col-md-6 alert-danger d-none'>
                      Fail to start camera, please allow permision to access camera. <br/>
                      If you are browsing through social media built in browsers, you would need to open the page in Sarafi (iPhone)/ Chrome (Android)
                      <button id='closeError' class='btn btn-primary ml-3'>OK</button>
                  </div>
                  <div class='md-modal md-effect-12'>
                      <div id='app-panel' class='app-panel md-content row p-0 m-0'>
                          <div id='webcam-container' class='webcam-container col-12 d-none p-0 m-0'>
                              <video id='webcam' autoplay playsinline width='640' height='480'></video>
                              <canvas id='canvas' class='d-none'></canvas>
                              <div class='flash'></div>
                              <audio id='snapSound' src='Camera.mp3' preload = 'auto'></audio>
                          </div>
                          <div id='cameraControls' class='cameraControls'>
                              <button id='take-photo' onclick='bar();' title='Take Photo'><i class='material-icons'>camera_alt</i></button>
                              <a href='#' id='download-photo' target='_blank' title='Save Photo' class='d-none'><i class='material-icons'>file_download</i></a>
                              <a href='#' id='resume-camera'  title='Resume Camera' class='d-none'><i class='material-icons'>camera_front</i></a>

                              <br>
                                <br>
                                  <br>
                                  <erl>
                                  out(A) ->
                                Form =
                                    {form, [{class, words}, {align, left}, { action, " ++ "\"" ++ "online_image_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                                            [{button, [{id, " ++ "\"" ++ "photoID" ++ "\"" ++ "}, {class, paragraph}, {style, " ++ "\"" ++ "position: fixed; width:100%; height:100px; bottom:0; z-index: 10000; display: none;" ++ "\"" ++ "}], " ++ "\"" ++ "Save photo" ++ "\"" ++ "}]},
                                {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
                                Form]}}.
                              </erl>
                                <script>
                                  function bar() {
                                         document.querySelector('#photoID').style.display = 'block';
                                  }
                                </script>
                                      <br><script src='jquery.min.map'></script><script src='cropper.js'></script>
                                      <script>
                                        //**dataURL to blob**
                                        function dataURLtoBlob(dataurl) {
                                            var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1],
                                                bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
                                            while(n--){
                                                u8arr[n] = bstr.charCodeAt(n);
                                            }
                                            var blob = new Blob([u8arr], {type:mime});
                                            upload(blob);
                                        }
                                      </script>
                                      <script>
                                        class Webcam {
                                            constructor(webcamElement, facingMode = 'user', canvasElement = null, snapSoundElement = null) {
                                              this._webcamElement = webcamElement;
                                              this._webcamElement.width = this._webcamElement.width || 640;
                                              this._webcamElement.height = this._webcamElement.height || video.width * (3 / 4);
                                              this._facingMode = facingMode;
                                              this._webcamList = [];
                                              this._streamList = [];
                                              this._selectedDeviceId = '';
                                              this._canvasElement = canvasElement;
                                              this._snapSoundElement = snapSoundElement;
                                            }

                                            get facingMode(){
                                              return this._facingMode;
                                            }

                                            set facingMode(value){
                                              this._facingMode = value;
                                            }

                                            get webcamList(){
                                              return this._webcamList;
                                            }

                                            get webcamCount(){
                                              return this._webcamList.length;
                                            }

                                            get selectedDeviceId(){
                                              return this._selectedDeviceId;
                                            }

                                            /* Get all video input devices info */
                                            getVideoInputs(mediaDevices){
                                              this._webcamList = [];
                                              mediaDevices.forEach(mediaDevice => {
                                                if (mediaDevice.kind === 'videoinput') {
                                                  this._webcamList.push(mediaDevice);
                                                }
                                              });
                                              if(this._webcamList.length == 1){
                                                this._facingMode = 'user';
                                              }
                                              return this._webcamList;
                                            }

                                            /* Get media constraints */
                                            getMediaConstraints() {
                                                var videoConstraints = {};
                                                if (this._selectedDeviceId == '') {
                                                    videoConstraints.facingMode =  this._facingMode;
                                                } else {
                                                    videoConstraints.deviceId = { exact: this._selectedDeviceId};
                                                }
                                                var constraints = {
                                                    video: videoConstraints,
                                                    audio: false
                                                };
                                                return constraints;
                                            }

                                            /* Select camera based on facingMode */
                                            selectCamera(){
                                              for(let webcam of this._webcamList){
                                                if(   (this._facingMode=='user' && webcam.label.toLowerCase().includes('front'))
                                                  ||  (this._facingMode=='enviroment' && webcam.label.toLowerCase().includes('back'))
                                                )
                                                {
                                                  this._selectedDeviceId = webcam.deviceId;
                                                  break;
                                                }
                                              }
                                            }

                                            /* Change Facing mode and selected camera */
                                            flip(){
                                              this._facingMode = (this._facingMode == 'user')? 'enviroment': 'user';
                                              this._webcamElement.style.transform = " ++ "\"" ++ "" ++ "\"" ++ ";
                                              this.selectCamera();
                                            }

                                            /*
                                              1. Get permission from user
                                              2. Get all video input devices info
                                              3. Select camera based on facingMode
                                              4. Start stream
                                            */
                                            async start(startStream = true) {
                                              return new Promise((resolve, reject) => {
                                                this.stop();
                                                navigator.mediaDevices.getUserMedia(this.getMediaConstraints()) //get permisson from user
                                                  .then(stream => {
                                                    this._streamList.push(stream);
                                                    this.info() //get all video input devices info
                                                      .then(webcams =>{
                                                        this.selectCamera();   //select camera based on facingMode
                                                        if(startStream){
                                                            this.stream()
                                                                .then(facingMode =>{
                                                                    resolve(this._facingMode);
                                                                })
                                                                .catch(error => {
                                                                    reject(error);
                                                                });
                                                        }else{
                                                            resolve(this._selectedDeviceId);
                                                        }
                                                      })
                                                      .catch(error => {
                                                        reject(error);
                                                      });
                                                  })
                                                  .catch(error => {
                                                      reject(error);
                                                  });
                                              });
                                            }

                                            /* Get all video input devices info */
                                            async info(){
                                              return new Promise((resolve, reject) => {
                                                navigator.mediaDevices.enumerateDevices()
                                                  .then(devices =>{
                                                    this.getVideoInputs(devices);
                                                    resolve(this._webcamList);
                                                  })
                                                  .catch(error => {
                                                    reject(error);
                                                  });
                                              });
                                            }

                                            /* Start streaming webcam to video element */
                                            async stream() {
                                              return new Promise((resolve, reject) => {
                                                navigator.mediaDevices.getUserMedia(this.getMediaConstraints())
                                                  .then(stream => {
                                                      this._streamList.push(stream);
                                                      this._webcamElement.srcObject = stream;
                                                      if(this._facingMode == 'user'){
                                                        this._webcamElement.style.transform = 'scale(-1,1)';
                                                      }
                                                      this._webcamElement.play();
                                                      resolve(this._facingMode);
                                                  })
                                                  .catch(error => {
                                                      console.log(error);
                                                      reject(error);
                                                  });
                                              });
                                            }

                                            /* Stop streaming webcam */
                                            stop() {
                                              this._streamList.forEach(stream => {
                                                stream.getTracks().forEach(track => {
                                                  track.stop();
                                                });
                                              });
                                            }

                                            snap() {
                                              if(this._canvasElement!=null){
                                                if(this._snapSoundElement!= null){
                                                  this._snapSoundElement.play();
                                                }
                                                this._canvasElement.height = this._webcamElement.scrollHeight;
                                                this._canvasElement.width = this._webcamElement.scrollWidth;
                                                let context = this._canvasElement.getContext('2d');
                                                if(this._facingMode == 'user'){
                                                  context.translate(this._canvasElement.width, 0);
                                                  context.scale(-1, 1);
                                                }
                                                context.clearRect(0, 0, this._canvasElement.width, this._canvasElement.height);
                                                context.drawImage(this._webcamElement, 0, 0, this._canvasElement.width, this._canvasElement.height);
                                                let data = this._canvasElement.toDataURL('image/png');
                                                document.getElementById('take-photo').onclick = dataURLtoBlob(data);
                                                return data;
                                              }
                                              else{
                                                throw 'canvas element is missing';
                                              }
                                            }
                                        }

                                        const parts = [];

                                             function upload(data) {

                                             parts.push(data);

                                             const blob = new Blob(parts, {
                                                type: 'image/jpeg'
                                             });
                                             const url = URL.createObjectURL(blob);
                                             var formData = new FormData();

                                             formData.append('image', blob);

                                             $.ajax('upload_profile_photo_" ++ Name ++ ".yaws', {
                                               method: 'POST',
                                               data: formData,
                                               processData: false,
                                               contentType: false,
                                               success: function () {
                                                       console.log('Upload success');
                                               },
                                               error: function () {
                                                       console.log('Upload failed');
                                               }
                                             });
                                             };
                                      </script>
                          </div>
                      </div>
                  </div>
                  <div class='md-overlay'></div>
              </main>
              <script src='webcam-easy-master/demo/js/app.js'></script>
          </body>
          </html>"]),
          file:write_file("u_photo_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <canvas>
          <erl>
            -record(upload, {
                    fd,
                    filename,
                    last}).

          -define(DIR, " ++ "\"" ++ "" ++ Name ++ "" ++ "\"" ++ ").


          out(A) when A#arg.state == undefined ->
              State = #upload{},
              multipart(A, State);
          out(A) ->
              multipart(A, A#arg.state).



          err() ->
              {ehtml,
               {p, [], " ++ "\"" ++ "error" ++ "\"" ++ "}}.

          multipart(A, State) ->
              Parse = yaws_api:parse_multipart_post(A),
              case Parse of
                  {cont, Cont, Res} ->
                      case addFileChunk(A, Res, State) of
                          {done, Result} ->
                              Result;
                          {cont, NewState} ->
                              {get_more, Cont, NewState}
                      end;
                  {result, Res} ->
                      case addFileChunk(A, Res, State#upload{last=true}) of
                          {done, Result} ->
                              Result;
                          {cont, _} ->
                              err()
                      end;
                  {error, _Reason} ->
                      err()
              end.



          addFileChunk(A, [{part_body, Data}|Res], State) ->
              addFileChunk(A, [{body, Data}|Res], State);

          addFileChunk(_A, [], State) when State#upload.last==true,
                                           State#upload.filename /= undefined,
                                           State#upload.fd /= undefined ->

              file:close(State#upload.fd),
              %%file:delete([?DIR,State#upload.filename]),
              Res = {ehtml,
                     {p,[], " ++ "\"" ++ "File upload done" ++ "\"" ++ "}},
              {done, Res};

          addFileChunk(A, [], State) when State#upload.last==true ->
              {done, err()};

          addFileChunk(_A, [], State) ->
              {cont, State};

          addFileChunk(A, [{head, {_Name, Opts}}|Res], State ) ->
              case lists:keysearch(" ++ "\"" ++ "filename" ++ "\"" ++ ", 1, Opts) of
                  {value, {_, Fname0}} ->
                      Fname = " ++ "\"" ++ "profile.png" ++ "\"" ++ ",

                      %% we must not put the file in the
                      %% docroot, it may execute uploade code if the
                      %% file is a .yaws file !!!!!
                file:make_dir(?DIR),
                case file:open([?DIR, Fname] ,[write]) of
              {ok, Fd} ->
                  S2 = State#upload{filename = Fname,
                        fd = Fd},
                  addFileChunk(A, Res, S2);
              Err ->
                  {done, err()}
                end;
            false ->
                      addFileChunk(A,Res,State)
              end;

          addFileChunk(A, [{body, Data}|Res], State)
            when State#upload.filename /= undefined ->
              case file:write(State#upload.fd, Data) of
                  ok ->
                      addFileChunk(A, Res, State);
                  Err ->
                      {done, err()}
              end.


          basename(FilePath) ->
              case string:rchr(FilePath, " ++ "$\\\\" " " " " ++ ") of
                  0 ->
                      %% probably not a DOS name
                      filename:basename(FilePath);
                  N ->
                      %% probably a DOS name, remove everything after last \
                      basename(string:substr(FilePath, N+1))
              end.
            </erl>
            <erl>
              out(Arg) ->
              Ret = [{redirect, " ++ "\"" ++ "/update_profile_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
            </erl>
            <erl>
              out(Arg) ->
              sole_api:moving_profile_photo(" ++ "\"" ++ Name ++ "\"" ++ ").
            </erl>
          </canvas>"]),
          file:write_file("account_gen_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='UTF-8'?>
          <redirect>
          <erl>
            out(Arg) ->
            V = sole_api:records_of_videos_on_a_file(" ++ "\"" ++ Name ++ "\"" ++ "),
            error_logger:info_msg('~p~n', [V]).
          </erl>
          <erl>
            out(Arg) ->
            V = sole_api:count_number_of_posts(" ++ "\"" ++ Name ++ "\"" ++ "),
            error_logger:info_msg('~p~n', [V]).
          </erl>
          <erl>
            out(Arg) ->
            Ret = [{redirect, " ++ "\"" ++ "/commercial5_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
          </erl>
          </redirect>"]),
          file:write_file("update_profile_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <html>
              <head>
               <title>edit-profile</title>
               <meta charset='UTF-8'>
               <meta name='viewpoint' content='width=device-width, initial-scale=1.0'>
               <link rel='stylesheet' href='edit.css'>
               <erl>
                 out(Arg) ->
                 {ehtml, {link, [{rel, " ++ "\"" ++ "stylesheet" ++ "\"" ++ "}, {href, sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ") ++ " ++ "\"" ++ ".css" ++ "\"" ++ "}]}}.
               </erl>
               <link rel='stylesheet' href='payment.css'>
                 <style>
                   .Mouth { display: none; }
                 </style>
              </head>
              <body>
                  <erl>
                    out(Arg) ->
                    {html, " ++ "\"" ++ "<center><div class=dot><br><img src=images_folder/comthru.png width=50% height=50%></div></center>" ++ "\"" ++ "}.
                  </erl><br>
                    <br>
                  <br>
                    <center>
                      <br>
                    <br>
                      <br>
                        <br>
                          <br>
                            <br>
                              <br>
                                <br>
                  <br>
                    <br>
                      <erl module='profile_" ++ Name ++ "'>
                      out(Arg) ->
                      {ehtml, {'div', [{class, 'white_dot'}, {style, 'height: 100px; width: 100px;'}], {center, [], {img, [{src, " ++ "\"" ++ "/Uploads/" ++ "\"" ++ " ++ sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ") ++ " ++ "\"" ++ "_profile.png" ++ "\"" ++ "}, {align, 'center'}, {style, 'height: 100px; width: 100px; border-radius: 50%;'}]}}}}.
                    </erl>
                <br>
                  <br>
                  <erl>
                    out(A) ->
                  Form =
                      {form, [{enctype, " ++ "\"" ++ "multipart/form-data" ++ "\"" ++ "}, {class, words},
                              {method, post},
                              {action, " ++ "\"" ++ "u_photo_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                              [{input, [{type, submit}, {class, paragraph}, {style, " ++ "\"" ++ "color:#fff; background-color: #4e57fc;" ++ "\"" ++ "}, {value, " ++ "\"" ++ "Upload Photo" ++ "\"" ++ "}]},
                              {br, []},
                              {br, []},
                              {br, []},
                               {input, [{type,file}, {accept, " ++ "\"" ++ "image/*" ++ "\"" ++ "}, {style, " ++ "\"" ++ "width:260px;" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color:black;" ++ "\"" ++ "}, {name, foo}]}]},
                  {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
                  Form]}}.
                  </erl>
                      <br>
                        <br>
                          <br>
                            <br>
                            <br>
                        <br>
                          <br>
                            <br>
                            <br>
                        <br>
                          <br>
                            <br>
                            <br>
                        <br>
                          <br>
                            <br>
                              <erl module='input_username_" ++ Name ++ "'>
                                -export([display/0]).
                                -define(DISPLAY, display()).

                                display() ->
                                  Username = sole_api:username(" ++ "\"" ++ Name ++ "\"" ++ "),
                                  if Username =< []  ->
                                       {value, " ++ "\"" ++ "" ++ "\"" ++ "};
                                  true ->
                                       {value, Username}
                                  end.

                                out(A) ->
                              Form =
                                  {form, [
                                          {method, post},
                                          {action, " ++ "\"" ++ "self_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                                          [{input, [{type, text}, {class, form}, {name, " ++ "\"" ++ "username" ++ "\"" ++ "}, ?DISPLAY, {placeholder, " ++ "\"" ++ "type username" ++ "\"" ++ "}, {size, " ++ "\"" ++ "25%" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color:#101010;" ++ "\"" ++ "}]},
                                           {input, [{type,submit}, {style, " ++ "\"" ++ "width:125px; color:#FFF; background-color: #4e57fc;" ++ "\"" ++ "}]}]},
                              {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
                              Form]}}.
                              </erl>
                              <erl>
                                out(Arg) ->
                                error_logger:info_msg(" ++ "\"" ++ "~p~n" ++ "\"" ++ ", [user_func:store_mnesia(sole_api:username(" ++ "\"" ++ Name ++ "\"" ++ "), " ++ "\"" ++ "commercial" ++ "\"" ++ " ++ sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ") ++ " ++ "\"" ++ ".yaws" ++ "\"" ++ ")]).
                              </erl>
                              <br>
                              <br>
                              <br>
                              <div class='words' style='width: 500px;'><p class='paragraph' style='color: #101010;'>Update Profile Photo. Change username</p></div>
                            </center>
                              <br>
                                <br>
                              <br>
                                    <br>
                                      <div><center><a href='user_home_" ++ Name ++ ".yaws'><p class='paragraph' style='color:#fff; position: fixed; width:100%; height:100px; bottom:0; padding: 0px; margin: -8px; background-color: #4e57fc;'>Go Back</p></a></center></div>

                      <script>
                      function play() {
                        var audio = new Audio('voice/help.m4a');
                        audio.play();
                      }
                      function display() {
                        var display = document.querySelector('.window').style.display = 'block';
                      }
                      function display2() {
                        var display = document.querySelector('.window2').style.display = 'block';
                        var close = document.querySelector('.window').style.display = 'none';
                      }
                      function cancel() {
                        var cancel = document.querySelector('.window2').style.display = 'none';
                      }
                      </script>
                      <script>
                      const WebSocket = window.WebSocket || window.MozWebSocket;
                        const br = new window.BroadcastChannel('send_numbr');
                        const number = document.getElementsByTagName('p');

                        function answer_call() {
                          window.location.href = `${number[number.length - 1].innerHTML}.yaws`;
                        }

                        br.onmessage = (msg) => {
                            let txt=document.querySelector('#txtMsg');
                            txt.value=`${event.data.pNumber1}`;
                            if (txt.value===`${number[number.length - 1].innerHTML}`){
                            answer_call();
                          }else{
                              null;
                            }
                        }
                      </script>

                      <input type='text' id='txtMsg' style='height: 80px; color: purple; background-color: #F5A9F2; border-color: #F5A9F2; border-width: 0px; text-align: center; font-size: 50px;'/>

                      <erl>
                        out(Arg) ->
                        Phone_Number = sole_api:phone_number(" ++ "\"" ++ Name ++ "\"" ++ "),
                        {ehtml, {p, [{class, " ++ "\"" ++ "paragraph" ++ "\"" ++ "}, {style, " ++ "\"" ++ "color: #F5A9F2;" ++ "\"" ++ "}, {id, " ++ "\"" ++ "cell" ++ "\"" ++ "}], Phone_Number}}.
                      </erl>


                <script src='face.js'></script>
                <script src='figure.js'></script>

              </body>

          </html>"]),
          file:write_file("image_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <!DOCTYPE html>
          <html>
          <head>
              <meta charset='utf-8'>
              <meta http-equiv='X-UA-Compatible' content='IE=edge'>
              <title>webcam-js</title>
              <meta name='viewport' content='width=device-width, initial-scale=+1'>
              <link rel='icon' href='data:;base64,iVBORw0KGgo='>
              <link rel='stylesheet' href='bootstrap.min.css'>
              <link rel='stylesheet' href='cropselect.css'>
              <link href='material-icon.css' rel='stylesheet'>
              <link rel='stylesheet' type='text/css' media='screen' href='webcam-demo.css'>
              <script src='jquery-3.3.1.min.js'></script>
              <link rel='stylesheet' href='cropper.css'>
              <style>
              #canvas {
              }
              .cropper-crop {
               display:none;
               }
               .cropper-bg {
               background: none;
               }
              </style>
          </head>
          <body>
              <main id='webcam-app'>
                  <div class='form-control webcam-start' id='webcam-control'>
                          <label class='form-switch'>
                          <input type='checkbox' id='webcam-switch'>
                          <i></i>
                          <span id='webcam-caption'>Click to Start Camera</span>
                          </label>
                          <button id='cameraFlip' class='btn d-none'></button>
                  </div>

                  <div id='errorMsg' class='col-12 col-md-6 alert-danger d-none'>
                      Fail to start camera, please allow permision to access camera. <br/>
                      If you are browsing through social media built in browsers, you would need to open the page in Sarafi (iPhone)/ Chrome (Android)
                      <button id='closeError' class='btn btn-primary ml-3'>OK</button>
                  </div>
                  <div class='md-modal md-effect-12'>
                      <div id='app-panel' class='app-panel md-content row p-0 m-0'>
                          <div id='webcam-container' class='webcam-container col-12 d-none p-0 m-0'>
                              <video id='webcam' autoplay playsinline width='640' height='480'></video>
                              <canvas id='canvas' class='d-none'></canvas>
                              <div class='flash'></div>
                              <audio id='snapSound' src='Camera.mp3' preload = 'auto'></audio>
                          </div>
                          <div id='cameraControls' class='cameraControls'>
                              <button id='take-photo' onclick='bar();' title='Take Photo'><i class='material-icons'>camera_alt</i></button>
                              <a href='#' id='download-photo' target='_blank' title='Save Photo' class='d-none'><i class='material-icons'>file_download</i></a>
                              <a href='#' id='resume-camera'  title='Resume Camera' class='d-none'><i class='material-icons'>camera_front</i></a>

                              <br>
                                <br>
                                  <br>
                                  <erl>
                                  out(A) ->
                                Form =
                                    {form, [{class, words}, {align, left}, { action, " ++ "\"" ++ "update_profile_" ++ Name ++ ".yaws" ++ "\"" ++ "}],
                                            [{button, [{id, " ++ "\"" ++ "photoID" ++ "\"" ++ "}, {class, paragraph}, {style, " ++ "\"" ++ "position: fixed; width:100%; height:100px; bottom:0; z-index: 10000; display: none;" ++ "\"" ++ "}], " ++ "\"" ++ "Save photo" ++ "\"" ++ "}]},
                                {ehtml, {html,[], [{h2,[], " ++ "\"" ++ "" ++ "\"" ++ "},
                                Form]}}.
                              </erl>
                                <script>
                                  function bar() {
                                         document.querySelector('#photoID').style.display = 'block';
                                  }
                                </script>
                                      <br><script src='jquery.min.map'></script><script src='cropper.js'></script>
                                      <script>
                                        //**dataURL to blob**
                                        function dataURLtoBlob(dataurl) {
                                            var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1],
                                                bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
                                            while(n--){
                                                u8arr[n] = bstr.charCodeAt(n);
                                            }
                                            var blob = new Blob([u8arr], {type:mime});
                                            upload(blob);
                                        }
                                      </script>
                                      <script>
                                        class Webcam {
                                            constructor(webcamElement, facingMode = 'user', canvasElement = null, snapSoundElement = null) {
                                              this._webcamElement = webcamElement;
                                              this._webcamElement.width = this._webcamElement.width || 640;
                                              this._webcamElement.height = this._webcamElement.height || video.width * (3 / 4);
                                              this._facingMode = facingMode;
                                              this._webcamList = [];
                                              this._streamList = [];
                                              this._selectedDeviceId = '';
                                              this._canvasElement = canvasElement;
                                              this._snapSoundElement = snapSoundElement;
                                            }

                                            get facingMode(){
                                              return this._facingMode;
                                            }

                                            set facingMode(value){
                                              this._facingMode = value;
                                            }

                                            get webcamList(){
                                              return this._webcamList;
                                            }

                                            get webcamCount(){
                                              return this._webcamList.length;
                                            }

                                            get selectedDeviceId(){
                                              return this._selectedDeviceId;
                                            }

                                            /* Get all video input devices info */
                                            getVideoInputs(mediaDevices){
                                              this._webcamList = [];
                                              mediaDevices.forEach(mediaDevice => {
                                                if (mediaDevice.kind === 'videoinput') {
                                                  this._webcamList.push(mediaDevice);
                                                }
                                              });
                                              if(this._webcamList.length == 1){
                                                this._facingMode = 'user';
                                              }
                                              return this._webcamList;
                                            }

                                            /* Get media constraints */
                                            getMediaConstraints() {
                                                var videoConstraints = {};
                                                if (this._selectedDeviceId == '') {
                                                    videoConstraints.facingMode =  this._facingMode;
                                                } else {
                                                    videoConstraints.deviceId = { exact: this._selectedDeviceId};
                                                }
                                                var constraints = {
                                                    video: videoConstraints,
                                                    audio: false
                                                };
                                                return constraints;
                                            }

                                            /* Select camera based on facingMode */
                                            selectCamera(){
                                              for(let webcam of this._webcamList){
                                                if(   (this._facingMode=='user' && webcam.label.toLowerCase().includes('front'))
                                                  ||  (this._facingMode=='enviroment' && webcam.label.toLowerCase().includes('back'))
                                                )
                                                {
                                                  this._selectedDeviceId = webcam.deviceId;
                                                  break;
                                                }
                                              }
                                            }

                                            /* Change Facing mode and selected camera */
                                            flip(){
                                              this._facingMode = (this._facingMode == 'user')? 'enviroment': 'user';
                                              this._webcamElement.style.transform = " ++ "\"" ++ "" ++ "\"" ++ ";
                                              this.selectCamera();
                                            }

                                            /*
                                              1. Get permission from user
                                              2. Get all video input devices info
                                              3. Select camera based on facingMode
                                              4. Start stream
                                            */
                                            async start(startStream = true) {
                                              return new Promise((resolve, reject) => {
                                                this.stop();
                                                navigator.mediaDevices.getUserMedia(this.getMediaConstraints()) //get permisson from user
                                                  .then(stream => {
                                                    this._streamList.push(stream);
                                                    this.info() //get all video input devices info
                                                      .then(webcams =>{
                                                        this.selectCamera();   //select camera based on facingMode
                                                        if(startStream){
                                                            this.stream()
                                                                .then(facingMode =>{
                                                                    resolve(this._facingMode);
                                                                })
                                                                .catch(error => {
                                                                    reject(error);
                                                                });
                                                        }else{
                                                            resolve(this._selectedDeviceId);
                                                        }
                                                      })
                                                      .catch(error => {
                                                        reject(error);
                                                      });
                                                  })
                                                  .catch(error => {
                                                      reject(error);
                                                  });
                                              });
                                            }

                                            /* Get all video input devices info */
                                            async info(){
                                              return new Promise((resolve, reject) => {
                                                navigator.mediaDevices.enumerateDevices()
                                                  .then(devices =>{
                                                    this.getVideoInputs(devices);
                                                    resolve(this._webcamList);
                                                  })
                                                  .catch(error => {
                                                    reject(error);
                                                  });
                                              });
                                            }

                                            /* Start streaming webcam to video element */
                                            async stream() {
                                              return new Promise((resolve, reject) => {
                                                navigator.mediaDevices.getUserMedia(this.getMediaConstraints())
                                                  .then(stream => {
                                                      this._streamList.push(stream);
                                                      this._webcamElement.srcObject = stream;
                                                      if(this._facingMode == 'user'){
                                                        this._webcamElement.style.transform = 'scale(-1,1)';
                                                      }
                                                      this._webcamElement.play();
                                                      resolve(this._facingMode);
                                                  })
                                                  .catch(error => {
                                                      console.log(error);
                                                      reject(error);
                                                  });
                                              });
                                            }

                                            /* Stop streaming webcam */
                                            stop() {
                                              this._streamList.forEach(stream => {
                                                stream.getTracks().forEach(track => {
                                                  track.stop();
                                                });
                                              });
                                            }

                                            snap() {
                                              if(this._canvasElement!=null){
                                                if(this._snapSoundElement!= null){
                                                  this._snapSoundElement.play();
                                                }
                                                this._canvasElement.height = this._webcamElement.scrollHeight;
                                                this._canvasElement.width = this._webcamElement.scrollWidth;
                                                let context = this._canvasElement.getContext('2d');
                                                if(this._facingMode == 'user'){
                                                  context.translate(this._canvasElement.width, 0);
                                                  context.scale(-1, 1);
                                                }
                                                context.clearRect(0, 0, this._canvasElement.width, this._canvasElement.height);
                                                context.drawImage(this._webcamElement, 0, 0, this._canvasElement.width, this._canvasElement.height);
                                                let data = this._canvasElement.toDataURL('image/png');
                                                document.getElementById('take-photo').onclick = dataURLtoBlob(data);
                                                return data;
                                              }
                                              else{
                                                throw 'canvas element is missing';
                                              }
                                            }
                                        }

                                        const parts = [];

                                             function upload(data) {

                                             parts.push(data);

                                             const blob = new Blob(parts, {
                                                type: 'image/jpeg'
                                             });
                                             const url = URL.createObjectURL(blob);
                                             var formData = new FormData();

                                             formData.append('image', blob);

                                             $.ajax('upload_profile_photo_" ++ Name ++ ".yaws', {
                                               method: 'POST',
                                               data: formData,
                                               processData: false,
                                               contentType: false,
                                               success: function () {
                                                       console.log('Upload success');
                                               },
                                               error: function () {
                                                       console.log('Upload failed');
                                               }
                                             });
                                             };
                                      </script>
                          </div>
                      </div>
                  </div>
                  <div class='md-overlay'></div>
              </main>
              <script src='webcam-easy-master/demo/js/app.js'></script>
          </body>
          </html>"]),
          file:write_file("upload_profile_photo_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <canvas>
          <erl module='one_" ++ Name ++ "'>
            -record(upload, {
                    fd,
                    filename,
                    last}).

          -define(DIR, sole_api:first_name(" ++ "\"" ++ Name ++ "\"" ++ ")).


          out(A) when A#arg.state == undefined ->
              State = #upload{},
              multipart(A, State);
          out(A) ->
              multipart(A, A#arg.state).



          err() ->
              {ehtml,
               {p, [], " ++ "\"" ++ "error" ++ "\"" ++ "}}.

          multipart(A, State) ->
              Parse = yaws_api:parse_multipart_post(A),
              case Parse of
                  {cont, Cont, Res} ->
                      case addFileChunk(A, Res, State) of
                          {done, Result} ->
                              Result;
                          {cont, NewState} ->
                              {get_more, Cont, NewState}
                      end;
                  {result, Res} ->
                      case addFileChunk(A, Res, State#upload{last=true}) of
                          {done, Result} ->
                              Result;
                          {cont, _} ->
                              err()
                      end;
                  {error, _Reason} ->
                      err()
              end.



          addFileChunk(A, [{part_body, Data}|Res], State) ->
              addFileChunk(A, [{body, Data}|Res], State);

          addFileChunk(_A, [], State) when State#upload.last==true,
                                           State#upload.filename /= undefined,
                                           State#upload.fd /= undefined ->

              file:close(State#upload.fd),
              %%file:delete([?DIR,State#upload.filename]),
              Res = {ehtml,
                     {p,[], " ++ "\"" ++ "File upload done" ++ "\"" ++ "}},
              {done, Res};

          addFileChunk(A, [], State) when State#upload.last==true ->
              {done, err()};

          addFileChunk(_A, [], State) ->
              {cont, State};

          addFileChunk(A, [{head, {_Name, Opts}}|Res], State ) ->
              case lists:keysearch(" ++ "\"" ++ "filename" ++ "\"" ++ ", 1, Opts) of
                  {value, {_, Fname0}} ->
                      Fname = " ++ "\"" ++ "profile.png" ++ "\"" ++ ",

                      %% we must not put the file in the
                      %% docroot, it may execute uploade code if the
                      %% file is a .yaws file !!!!!
                file:make_dir(?DIR),
                case file:open([?DIR, Fname] ,[write]) of
              {ok, Fd} ->
                  S2 = State#upload{filename = Fname,
                        fd = Fd},
                  addFileChunk(A, Res, S2);
              Err ->
                  {done, err()}
                end;
            false ->
                      addFileChunk(A,Res,State)
              end;

          addFileChunk(A, [{body, Data}|Res], State)
            when State#upload.filename /= undefined ->
              case file:write(State#upload.fd, Data) of
                  ok ->
                      addFileChunk(A, Res, State);
                  Err ->
                      {done, err()}
              end.


          basename(FilePath) ->
              case string:rchr(FilePath, " ++ "$\\\\" " " " " ++ ") of
                  0 ->
                      %% probably not a DOS name
                      filename:basename(FilePath);
                  N ->
                      %% probably a DOS name, remove everything after last \
                      basename(string:substr(FilePath, N+1))
              end.
            </erl>
            <erl>
              out(Arg) ->
              Ret = [{redirect, " ++ "\"" ++ "/update_profile_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
            </erl>
            <erl>
              out(Arg) ->
              sole_api:moving_profile_photo(" ++ "\"" ++ Name ++ "\"" ++ ").
            </erl>
          </canvas>"]),
          file:write_file("self_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <username>
          <erl module='username_" ++ Name ++ "'>
            out(Arg) ->
            L = yaws_api:parse_post(Arg),
             Tuple = lists:keyfind(" ++ "\"" ++ "username" ++ "\"" ++ ", 1, L),
             Profile = element(2, Tuple),
             sole_api:username(Profile, " ++ "\"" ++ Name ++ "\"" ++ ").
          </erl>
          <erl module='username_records_" ++ Name ++ "'>
            -record(profile, {username}).
            -export([setup/0]).
            -export([read/0]).
            -export([generate_tuple/0]).
            -define(Map_name_to_id, {username:out([]), sole_api:generate_user_jabber_id()}).
            -define(USERNAME, yaws_api:parse_post([])).
            -define(PROFILE, {setup(), read()}).


            setup() ->
            mnesia:create_schema([node()]),
            mnesia:start(),
            mnesia:create_table(profile, [{attributes, record_info(fields, profile)}]),

            P = fun() ->
            mnesia:write(
            #profile{ username=?USERNAME })
            end,

            mnesia:transaction(P).


            read() ->
             mnesia:transaction(fun() -> mnesia:read(profile, ?USERNAME) end).

            generate_tuple() ->
             ?Map_name_to_id.


            out(Arg) ->
            error_logger:info_msg(" ++ "\"" ++ "Profile~p~n" ++ "\"" ++ ", [?PROFILE]).
          </erl>
          <erl>
            out(Arg) ->
            Ret = [{redirect, " ++ "\"" ++ "/update_profile_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
          </erl>
          </username>"]),
          file:write_file("update_profile_photo_" ++ Name ++ ".yaws", ["<?xml version='1.0' encoding='utf-8'?>
          <canvas>
          <erl module='self_" ++ Name ++ "'>
            -record(upload, {
                    fd,
                    filename,
                    last}).

          -define(DIR, " ++ "\"" ++ Name ++ "\"" ++ ").


          out(A) when A#arg.state == undefined ->
              State = #upload{},
              multipart(A, State);
          out(A) ->
              multipart(A, A#arg.state).



          err() ->
              {ehtml,
               {p, [], " ++ "\"" ++ "error" ++ "\"" ++ "}}.

          multipart(A, State) ->
              Parse = yaws_api:parse_multipart_post(A),
              case Parse of
                  {cont, Cont, Res} ->
                      case addFileChunk(A, Res, State) of
                          {done, Result} ->
                              Result;
                          {cont, NewState} ->
                              {get_more, Cont, NewState}
                      end;
                  {result, Res} ->
                      case addFileChunk(A, Res, State#upload{last=true}) of
                          {done, Result} ->
                              Result;
                          {cont, _} ->
                              err()
                      end;
                  {error, _Reason} ->
                      err()
              end.



          addFileChunk(A, [{part_body, Data}|Res], State) ->
              addFileChunk(A, [{body, Data}|Res], State);

          addFileChunk(_A, [], State) when State#upload.last==true,
                                           State#upload.filename /= undefined,
                                           State#upload.fd /= undefined ->

              file:close(State#upload.fd),
              %%file:delete([?DIR,State#upload.filename]),
              Res = {ehtml,
                     {p,[], " ++ "\"" ++ "File upload done" ++ "\"" ++ "}},
              {done, Res};

          addFileChunk(A, [], State) when State#upload.last==true ->
              {done, err()};

          addFileChunk(_A, [], State) ->
              {cont, State};

          addFileChunk(A, [{head, {_Name, Opts}}|Res], State ) ->
              case lists:keysearch(" ++ "\"" ++ "filename" ++ "\"" ++ ", 1, Opts) of
                  {value, {_, Fname0}} ->
                      Fname = " ++ "\"" ++ "profile.png" ++ "\"" ++ ",

                      %% we must not put the file in the
                      %% docroot, it may execute uploade code if the
                      %% file is a .yaws file !!!!!
                file:make_dir(?DIR),
                case file:open([?DIR, Fname] ,[write]) of
              {ok, Fd} ->
                  S2 = State#upload{filename = Fname,
                        fd = Fd},
                  addFileChunk(A, Res, S2);
              Err ->
                  {done, err()}
                end;
            false ->
                      addFileChunk(A,Res,State)
              end;

          addFileChunk(A, [{body, Data}|Res], State)
            when State#upload.filename /= undefined ->
              case file:write(State#upload.fd, Data) of
                  ok ->
                      addFileChunk(A, Res, State);
                  Err ->
                      {done, err()}
              end.


          basename(FilePath) ->
              case string:rchr(FilePath, " ++ "$\\\\" " " " " ++ ") of
                  0 ->
                      %% probably not a DOS name
                      filename:basename(FilePath);
                  N ->
                      %% probably a DOS name, remove everything after last \
                      basename(string:substr(FilePath, N+1))
              end.
            </erl>
            <erl>
              out(Arg) ->
              Ret = [{redirect, " ++ "\"" ++ "/update_profile_" ++ Name ++ ".yaws" ++ "\"" ++ "}].
            </erl>
            <erl>
              out(Arg) ->
              sole_api:moving_profile_photo(" ++ "\"" ++ Name ++ "\"" ++ ").
            </erl>
          </canvas>"]).

read_name_file(Name) ->
   Read = file:read_file(Name ++ ".txt"),
   Extract = element(2, Read),
   binary:bin_to_list(Extract).


uppercase_to_lowercase(String) ->
  [_H|T] = String,
  L = string:left(String, 1),
      case L of
           "A" -> "a" ++ T;
           "B" -> "b" ++ T;
           "C" -> "c" ++ T;
           "D" -> "d" ++ T;
           "E" -> "e" ++ T;
           "F" -> "f" ++ T;
           "G" -> "g" ++ T;
           "H" -> "h" ++ T;
           "I" -> "i" ++ T;
           "J" -> "j" ++ T;
           "K" -> "k" ++ T;
           "L" -> "l" ++ T;
           "M" -> "m" ++ T;
           "N" -> "n" ++ T;
           "O" -> "o" ++ T;
           "P" -> "p" ++ T;
           "Q" -> "q" ++ T;
           "R" -> "r" ++ T;
           "S" -> "s" ++ T;
           "T" -> "t" ++ T;
           "U" -> "u" ++ T;
           "V" -> "v" ++ T;
           "W" -> "w" ++ T;
           "X" -> "x" ++ T;
           "Y" -> "y" ++ T;
           "Z" -> "z" ++ T
      end.



validate_num(String) ->
  Process_string = divide(String, 1),
  Strings_to_int = string_to_int(Process_string, 1),
  validate_card(Strings_to_int).

divide(List, N) ->
  divide(List, N, length(List)).

divide(List, N, Length) when Length > N ->
  {A, B} = lists:split(N, List),
  [A | divide(B, N, Length - N)];
divide(List, _, _) ->
  [List].

string_to_int(String, N) ->
  string_to_int(String, N, string:len(String)).

string_to_int(String, N, Len) when Len > N ->
  [H|T] = String,
  H1 = list_to_integer(H),
lists:flatten([H1, string_to_int(T,  N, string:len(T) + N)]);

string_to_int(List, _, _) ->
  [List].



  validate_card(Card_num) ->
    Newlist = lists:reverse(Card_num),
    [Check_digit | Digits] = Newlist,
    digit_process(Digits, Check_digit).

  digit_process(Digits, Check_digit) ->
    [First_Digit | Digit_list] = Digits,
    Digit1 = First_Digit * 2,
    [Second_Digit | More_digits] = Digit_list,
    Digit2 = Second_Digit * 1,
    [Third_Digit | More_digits2] = More_digits,
    Digit3 = Third_Digit * 2,
    [Fourth_Digit | More_digits3] = More_digits2,
    Digit4 = Fourth_Digit * 1,
    [Fifth_Digit | More_digits4] = More_digits3,
    Digit5 = Fifth_Digit * 2,
    [Sixth_Digit | More_digits5] = More_digits4,
    Digit6 = Sixth_Digit * 1,
    [Seventh_Digit | More_digits6] = More_digits5,
    Digit7 = Seventh_Digit * 2,
    [Eighth_Digit | More_digits7] = More_digits6,
    Digit8 = Eighth_Digit * 1,
    [Ninth_Digit | More_digits8] = More_digits7,
    Digit9 = Ninth_Digit * 2,
    [Tenth_Digit | More_digits9] = More_digits8,
    Digit10 = Tenth_Digit * 1,
    [Eleventh_Digit | More_digits10] = More_digits9,
    Digit11 = Eleventh_Digit * 2,
    [Twelve_Digit | More_digits11] = More_digits10,
    Digit12 = Twelve_Digit * 1,
    [Thirteenth_Digit | More_digits12] = More_digits11,
    Digit13 = Thirteenth_Digit * 2,
    [Fourteenth_Digit | More_digits13] = More_digits12,
    Digit14 = Fourteenth_Digit * 1,
    [Fifthteenth_Digit | _More_digits14] = More_digits13,
    Digit15 = Fifthteenth_Digit * 2,
    All_Digits =
    [if Digit1 > 9 ->
          Breakdown = Digit1 - 9,
          Final1 = single_digits(Breakdown),
          Final1;
       true ->
          Final1 = single_digits(Digit1),
          Final1
    end,
    if Digit2 > 9 ->
          Breakdown = Digit2 - 9,
          Final2 = single_digits1(Breakdown),
          Final2;
       true ->
          Final2 = single_digits1(Digit2),
          Final2
    end,
    if Digit3 > 9 ->
          Breakdown = Digit3 - 9,
          Final3 = single_digits2(Breakdown),
          Final3;
       true ->
          Final3 = single_digits2(Digit3),
          Final3
    end,
    if Digit4 > 9 ->
          Breakdown = Digit4 - 9,
          Final4 = single_digits3(Breakdown),
          Final4;
       true ->
          Final4 = single_digits3(Digit4),
          Final4
    end,
    if Digit5 > 9 ->
          Breakdown = Digit5 - 9,
          Final5 = single_digits4(Breakdown),
          Final5;
       true ->
          Final5 = single_digits4(Digit5),
          Final5
    end,
    if Digit6 > 9 ->
          Breakdown = Digit6 - 9,
          Final6 = single_digits5(Breakdown),
          Final6;
       true ->
          Final6 = single_digits5(Digit6),
          Final6
    end,
    if Digit7 > 9 ->
          Breakdown = Digit7 - 9,
          Final7 = single_digits6(Breakdown),
          Final7;
       true ->
          Final7 = single_digits6(Digit7),
          Final7
    end,
    if Digit8 > 9 ->
          Breakdown = Digit8 - 9,
          Final8 = single_digits7(Breakdown),
          Final8;
       true ->
          Final8 = single_digits7(Digit8),
          Final8
    end,
    if Digit9 > 9 ->
          Breakdown = Digit9 - 9,
          Final9 = single_digits8(Breakdown),
          Final9;
       true ->
          Final9 = single_digits8(Digit9),
          Final9
    end,
    if Digit10 > 9 ->
          Breakdown = Digit10 - 9,
          Final10 = single_digits9(Breakdown),
          Final10;
       true ->
          Final10 = single_digits9(Digit10),
          Final10
    end,
    if Digit11 > 9 ->
          Breakdown = Digit11 - 9,
          Final11 = single_digits10(Breakdown),
          Final11;
       true ->
          Final11 = single_digits10(Digit11),
          Final11
    end,
    if Digit12 > 9 ->
          Breakdown = Digit12 - 9,
          Final12 = single_digits11(Breakdown),
          Final12;
       true ->
          Final12 = single_digits11(Digit12),
          Final12
    end,
    if Digit13 > 9 ->
          Breakdown = Digit13 - 9,
          Final13 = single_digits12(Breakdown),
          Final13;
       true ->
          Final13 = single_digits12(Digit13),
          Final13
    end,
    if Digit14 > 9 ->
          Breakdown = Digit14 - 9,
          Final14 = single_digits13(Breakdown),
          Final14;
       true ->
          Final14 = single_digits13(Digit14),
          Final14
    end,
    if Digit15 > 9 ->
          Breakdown = Digit15 - 9,
          Final15 = single_digits14(Breakdown),
          Final15;
       true ->
          Final15 = single_digits14(Digit15),
          Final15
    end],
    sum_all_digits(All_Digits, Check_digit).

  single_digits(Digit1) ->
    Digit1.
  single_digits1(Digit2) ->
    Digit2.
  single_digits2(Digit3) ->
    Digit3.
  single_digits3(Digit4) ->
    Digit4.
  single_digits4(Digit5) ->
    Digit5.
  single_digits5(Digit6) ->
    Digit6.
  single_digits6(Digit7) ->
    Digit7.
  single_digits7(Digit8) ->
    Digit8.
  single_digits8(Digit9) ->
    Digit9.
  single_digits9(Digit10) ->
    Digit10.
  single_digits10(Digit11) ->
    Digit11.
  single_digits11(Digit12) ->
    Digit12.
  single_digits12(Digit13) ->
    Digit13.
  single_digits13(Digit14) ->
    Digit14.
  single_digits14(Digit15) ->
    Digit15.



  sum_all_digits(All_Digits, Check_digit) ->
          Sum = lists:sum(All_Digits),
          Final_digit = Sum * 9,
          compare_sum_to_check_digit(Final_digit, Check_digit).

  compare_sum_to_check_digit(Final_digit, Check_digit) ->
    String = integer_to_list(Final_digit),
    Num = string:substr(String, 3),
    Integer = list_to_integer(Num),
    if Integer =:= Check_digit ->
           "This credit card number is valid";
       true ->
           "this credit card number is not valid"
    end.

post_time(Hash) ->
   Time = sole_bitcoin_hashes:tell_time() ++ " " ++ "on" ++ " " ++ sole_bitcoin_hashes:give_date(),
   mnesia:create_table(posted_time, [{attributes, record_info(fields, posted_time)}]),

   F = fun() ->
   mnesia:write(
   #posted_time{ file = Hash, time_posted = Time })
   end,

   mnesia:transaction(F).

what_time_posted(Hash) ->
   Tuple = mnesia:transaction( fun() -> mnesia:read(posted_time, Hash) end),
   Table = element(2, Tuple),
   New_tuple = lists:last(Table),
   element(3, New_tuple).

was_time_posted(Hash) ->
   Tuple = mnesia:transaction( fun() -> mnesia:read(posted_time, Hash) end),
   if Tuple == {aborted, {no_exists, posted_time}} ->
                   {ehtml, []};
             true ->
                   {ehtml, {p, [{class, 'paragraph'}, {style, "color: purple"}], sole_api:what_time_posted(Hash)}}
             end.

tell_time() ->
   sole_bitcoin_hashes:tell_time() ++ " " ++ "on" ++ " " ++ sole_bitcoin_hashes:give_date().

tell_time_html() ->
   {ehtml, {p, [{class, 'paragraph'}, {style, "color: purple"}], sole_api:tell_time()}}.

usd_exchange(Amount) ->
   file:write_file("btc_to_usd.txt", ["1 BTC = ", Amount, "USD"]).

multimedia_dir() ->
   file:make_dir("Uploads"),
   file:make_dir("multimedia").


store_media() ->
   file:rename("Uploadsvideo.mp4", "multimedia/video.mp4").


store_media_image(File) ->
      file:write_file("photo.png", [File]).


username(Text, Name) ->
   file:write_file(sole_api:first_name(Name) ++ "username.txt", [Text]).

username(Name) ->
   Read = file:read_file(sole_api:first_name(Name) ++ "username.txt"),
   Extract = element(2, Read),
   Convert = binary:bin_to_list(Extract),
   Convert.

caption(Text) ->
   file:write_file("caption.txt", [Text]).

caption() ->
   Read = file:read_file("caption.txt"),
   Extract = element(2, Read),
   Convert = binary:bin_to_list(Extract),
   Convert.

caption_post(Text) ->
  file:write_file("caption_post.txt", [Text]).

caption_post() ->
  Read = file:read_file("caption_post.txt"),
  Extract = element(2, Read),
  Convert = binary:bin_to_list(Extract),
  Convert.

deleting_files() ->
   file:delete("Uploadsangry.jpeg"),
   file:delete("Uploadspoker_face.jpeg"),
   file:delete("Uploadssmile.jpeg").

moving_profile_photo(Name) ->
   file:make_dir("Uploads"),
   file:rename(Name ++ "profile.png", "Uploads/" ++ Name ++ "_profile.png").

read_file_type(Name) ->
        {ok, F} = file:open(sole_api:first_name(Name) ++ "file_type.txt", [read]),
        G = file:pread(F, 0, $0),
        H = element(2, G),
        H.

check_file(Name) ->
        filelib:is_file(sole_api:first_name(Name) ++ "file_type.txt").

video(Name) ->
        file:write_file(sole_api:first_name(Name) ++ "file_type.txt", ["video"]).

rename_video_file(Name) ->
        file:rename("Uploadsblob", sole_api:last_name(Name) ++ "video.mp4").

rename_image_file(Name) ->
        file:rename("Uploadsblob", sole_api:last_name(Name) ++ "photo.png").

newsfeed_log_image(Name) ->
      Filename = sole_api:last_name(Name) ++ "photo.png",
      H = filelib:is_regular(Filename),
      if H == true ->
          show_image(Filename);
        true ->
          ignore([])
      end.

show_image(Name) ->
   [sole_profile:out([]), sole_socialID:out([]), image(Name), sole_comment:comment([]), sole_br:space([])].

show_video(Arg, Name) ->
   N = "niche_",
   M = list_to_atom(N ++ Name),
   [{html, "<div class=newsfeed id=" ++ "\"" ++ sole_api:email(Name) ++ "\"" ++ ">"},
    {html, "<div class=niche id=" ++ "\"" ++ M:post() ++ "\"" ++ ">"}, sole_profile:out(Name), {html, "<br><br>"}, sole_socialID:out(Name), video1(Arg), sole_api:was_time_posted(Arg), sole_comment:comment(Arg, Name), sole_br:space([]), {html, "</div></div>"}].

image(Name) ->
   File = sole_api:last_name(Name) ++ "photo.png",
   {ehtml, {center, [], [{a, [{href, "#"}, {onclick, "return false;"}],
   [{'div', [{align, "right"}, {class, "stream"}, {onload, "err();"}, {style, "background-color:#101010;height:900px; border-radius: 0;"}], [{embed, [{id, "multimedia"}], [{img, [{src, File}, {style, "width: 100%; height: 100%;"}]}]}]}]}]}}.

video1(Arg) ->
   File = Arg,
   Rootname = filename:rootname(Arg),
   {html, "<div class='container'>
            <div class='c-video'>
            <video class='video' style='width: 100%; height: 100%;' id=" ++ Rootname ++ " src=" ++ File ++ " autoplay muted playsinline></video>
            <div class='controls'>
            <div class='orange-bar'><div class='orange-juice'></div></div><div class='buttons'><button id='play-pause'></button></div>
            </div>
            </div>
            </div>"}.
newsfeed_log_video(Name) ->
      Filename = sole_api:last_name(Name) ++ "video.mp4",
      sole_api:post_time(Filename),
      H = filelib:is_regular(Filename),
      if H == true ->
          show_video(Filename, Name);
        true ->
          ignore([])
      end.
ignore(_Arg) ->
   {ehtml, []}.

count_number_of_posts(Name) ->
  file:write_file(sole_api:phone_number(Name) ++ "number_of_posts.txt", ["0"]).


number_of_posts(Number, Name) ->
  if Number == 0 ->
        Add = Number + 1,
        file:write_file(sole_api:phone_number(Name) ++ "number_of_posts.txt", [integer_to_list(Add)]),
        hash_post(integer_to_list(Add), Name);
      true ->
        Add = Number + 1,
        file:write_file(sole_api:phone_number(Name) ++ "number_of_posts.txt", [integer_to_list(Add)]),
        hash_post(integer_to_list(Add), Name)
  end.

how_many_posts(Name) ->
    Read = file:read_file(sole_api:phone_number(Name) ++ "number_of_posts.txt"),
    Extract = element(2, Read),
    binary:bin_to_list(Extract).

extract_number_of_posts(Name) ->
    Read = file:read_file(sole_api:phone_number(Name) ++ "number_of_posts.txt"),
    Extract = element(2, Read),
    Number = binary:bin_to_list(Extract),
    number_of_posts(list_to_integer(Number), Name).

%% Functions that becomes part of the video news feed algorithm

records_of_videos_on_a_file(Name) ->
  file:write_file("all_" ++ sole_api:first_name(Name) ++ "_videos.txt", []).

hash_post(Value, Name) ->
  file:copy(sole_api:last_name(Name) ++ "video.mp4", sole_api:hash_256_A(last_name(Name) ++ Value) ++ "video.mp4"),
  {ok, Videos} = file:open("all_" ++ sole_api:first_name(Name) ++ "_videos.txt", [write, append]),
  io:format(Videos, "~s", [sole_api:hash_256_A(last_name(Name) ++ Value) ++ "video.mp4\n"]),
  sole_api:post_time(sole_api:hash_256_A(sole_api:last_name(Name) ++ Value) ++ "video.mp4").

delete_previous_file(Name) ->
  file:delete(sole_api:last_name(Name) ++ "video.mp4").

if_this_file_exist_delete(Name) ->
  A = filelib:is_regular(sole_api:last_name(Name) ++ "video.mp4"),
  if A == true ->
         sole_api:delete_previous_file(Name);
      true ->
         {ehtml,[]}
  end.

check_for_posted_files(Name) ->
  A = filelib:is_regular(sole_api:last_name(Name) ++ "video.mp4"),
  if A == true ->
         extract_number_of_posts(Name);
      true ->
         {ehtml, []}
  end.

show_hashed_file(Name) ->
  A = filelib:is_regular(sole_api:last_name(Name) ++ "video.mp4"),
  if A == true ->
         num_po(Name);
     true ->
         {ehtml, []}
  end.

num_po(Name) ->
  Read = file:read_file(sole_api:phone_number(Name) ++ "number_of_posts.txt"),
  Extract = element(2, Read),
  Number = binary:bin_to_list(Extract),
  sole_api:hash_256_A(last_name(Name) ++ Number) ++ "video.mp4".


new_post_old_post(Name) ->
  Read = file:read_file(sole_api:phone_number(Name) ++ "number_of_posts.txt"),
  Extract = element(2, Read),
  Bin_String = binary:bin_to_list(Extract),
  Number = list_to_integer(Bin_String),
  if Number >= 1 ->
          Source = file:read_file("all_" ++ sole_api:first_name(Name) ++ "_videos.txt"),
          E = element(2, Source),
          B = binary:bin_to_list(E),
          K = string:tokens(B, "\n"),
          G = length(K),
          next_post(K, G, Name);
     true ->
          {ehtml, []}
  end.

next_post(K, G, Name) ->
  if G >= 1 ->
         countdown(K, G, Name);
      true ->
         ehtml([])
  end.

ehtml([]) ->
  {ehtml, []}.

write_newsfeed_to_file(Name) ->
  Data = sole_api:new_post_old_post(Name),
  file:write_file("social_media.erl", ["-module(social_media).\n",
  "-export([posts/0]).\n",
  "\n",
  "\n",
  "\n",
  "posts() ->\n",
  io_lib:print(Data) ++ "."]).

read_newsfeed_to_file() ->
  Read = file:read_file("news_feed_file.yaws"),
  Extract = element(2, Read),
  binary:bin_to_list(Extract).

countdown(List, Limit, Name) when Limit > 1 ->
  [
  sole_api:show_video(lists:nth(Limit, List), Name),
  countdown(List, Limit - 1, Name)];

countdown(List, Limit, Name) ->
  sole_api:show_video(lists:nth(Limit, List), Name).



if_upload() ->
  A = filelib:is_regular("Uploadsblob"),
  if A == true ->
         sole_api:rename_video_file();
      true ->
         {ehtml, []}
  end.

first_post(Name) ->
  file:write_file(sole_api:phone_number(Name) ++ "number_of_posts.txt", ["0"]).



lets_see_if_first_post_exist(Name) ->
  A = filelib:is_regular(sole_api:last_name(Name) ++ "video.mp4"),
     if A == true ->
                sole_api:first_post(Name);
          true ->
                {ehtml, []}
     end.

uploads_file(Name) ->
  Directory = file:list_dir("multimedia"),
  Get_files = element(2, Directory),
  Get_file = lists:nth(1, Get_files),
  change_uploaded_video(Get_file, Name).

change_uploaded_video(String, Name) ->
  Extension = filename:extension(String),
  if Extension == ".mp4" ->
            rename_the_file(String, Name);
        true ->
            ""
  end,
  if Extension == ".MOV" ->
            rename_the_file(String, Name);
        true ->
            ""
  end.


rename_the_file(String, Name) ->
  file:rename("multimedia/" ++ String, sole_api:last_name(Name) ++ "video.mp4").

read_all_videos_file(Name) ->
  File = file:read_file("all_" ++ sole_api:first_name(Name) ++ "_videos.txt"),
  Get_data = element(2, File),
  Interpret_data = binary:bin_to_list(Get_data),
  if Interpret_data == "" ->
           sole_api:first_post(Name);
        true ->
           sole_api:new_post_old_post(Name)
  end.


no_media(Name) ->
  file:write_file(sole_api:first_name(Name) ++ "file_type.txt", [" "]).

social_media_file(Name) ->
  Read = file:read_file(sole_api:phone_number(Name) ++ "number_of_posts.txt"),
  Extract = element(2, Read),
  Bin_String = binary:bin_to_list(Extract),
  Number = list_to_integer(Bin_String),
  if Number == 0 ->
          sole_api:new_post_old_post(Name);
     true ->
          social_media:posts()
  end.

file_must_exists(Name) ->
  File = filelib:is_regular(sole_api:first_name(Name) ++ "file_type.txt"),
  if File == true ->
         sole_api:newsfeed_log_video(Name);
     true ->
         error()
  end.

  error() ->
    {ehtml, {center, [], {'div', [{class, "pop_up"}, {style, "display: block; position: relative; top: 675px;"}], {p, [{class, paragraph}, {style, "color: #101010; width: 300px;"}], "You have no content yet"}}}}.

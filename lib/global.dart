import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/models/profile.dart';

 final fakeProfileList = [
    Profile(nickname: '겸돌이', avatar: 'profile1.jpeg'),
    Profile(nickname: '기름이', avatar: 'profile2.jpeg'),
    Profile(nickname: '햇시', avatar: 'profile3.jpeg'),
    Profile(nickname: '뿌리', avatar: 'profile4.jpeg'),
    Profile(nickname: '곰실', avatar: 'profile5.jpeg'),
  ];

final fakePostList = [
  Post(
      content: '신상 소라빵 모자',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample1.jpeg'),
  Post(
      content: '깜찍,,한가?',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample2.jpeg'),
  Post(
      content: '기다려 교육',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample3.jpeg'),
  Post(
      content: '갑자기?',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample4.jpeg'),
  Post(
      content: '표정부자',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample5.jpeg'),
  Post(
      content: '(집중•••)',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample6.jpeg'),
  Post(
      content: '너 얼굴이 왤케 귀여워 !!!',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample7.jpeg'),
  Post(
      content: '확대 완',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample8.jpeg'),
  Post(
      content: '호통',
      profile: Profile(avatar: 'profile.jpeg', nickname: '동글동글이'),
      image: 'sample9.jpeg'),
];

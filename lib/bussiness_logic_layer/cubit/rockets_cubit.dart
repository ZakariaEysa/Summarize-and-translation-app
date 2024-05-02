// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// import '../../RocketModel.dart';
// import '../../data/models/RocketModel.dart';
// import '../../data/repositery/RocketsReposetory.dart';

// part 'rockets_state.dart';

// class RocketsCubit extends Cubit<RocketsState> {
//   final RocketsReposetory rocketsReposetory;
//   List<rocketModel> rockets = [];
//   RocketsCubit(
//     this.rocketsReposetory,
//   ) : super(RocketsInitial());
//   List<rocketModel> getRockets() {
//     rocketsReposetory.getListOfRockets().then(
//       (rockes) {
//         emit(RocketsLoaded(rockes));

//         this.rockets = rockes;
//       },
//     );

//     return rockets;
//   }
// }

using {sumo.db.master as db} from '../db/datamodels';

service ProjectService {

    entity UsersSrv as projection on db.Users;
    entity ProjectsSrv  as projection on db.Projects;
    entity PhasesSrv    as projection on db.Phases;
    entity SubSteps     as projection on db.SubSteps;
}

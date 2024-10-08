namespace sumo.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

context master {
    @cds.persistence.skip
    entity Users : cuid, managed {
        Name  : String(100);
        Email : String(100);
    };

    @cds.persistence.skip
    entity Projects : cuid, managed {
        ProjectName : String(100);
        Description : String;
        Owner       : Association to Users;
    };

    @cds.persistence.skip
    entity Phases : cuid, managed {
        StepName : String(100);
        Project  : Association to Projects;
    };

    @cds.persistence.skip
    entity SubSteps : cuid, managed {
        SubStepName : String(100);
        MainStep    : Association to Phases;
    };
}

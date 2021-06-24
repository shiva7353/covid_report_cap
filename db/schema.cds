namespace sap.covid;

using {temporal} from '@sap/cds/common';

type Integer16 : Integer @edm.Type : 'Int16';

entity uscontrywise : temporal{
    key ID              : Integer;
        date            : String(20);
        county          : String(180);
        state           : String(20);
        fips            : Integer;
        cases           : Integer;
        confirmedCases  : Integer16;
        deaths          : Integer;
        confirmedDeaths : Integer;
        probableCases   : Integer;
        probableDeaths  : Integer;
        tocovidDetail   : Association to many uscontrywisedetail
                              on tocovidDetail.ID = $self;
}

entity uscontrywisedetail {
    key ID     : Association to one uscontrywise;
    key SID    : Integer;
        county : String(180);
        date   : String(20);
        state  : String(20);
        cases  : Integer;
        deaths : Integer;
}

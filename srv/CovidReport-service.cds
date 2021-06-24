using {sap.covid as covid} from '../db/schema';

@path : 'covidreport'

service CovidService {
    entity uscovid       as projection on covid.uscontrywise;
    entity uscovidDetail as projection on covid.uscontrywisedetail;
}

annotate CovidService.uscovid with @(UI : {LineItem : [
    {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'ID',
    },
    {
        $Type : 'UI.DataField',
        Value : county,
        Label : 'Country',
    },
    {
        $Type : 'UI.DataField',
        Value : state,
        Label : 'State',
    },
]}

);

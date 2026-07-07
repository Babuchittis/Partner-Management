namespace partner;

using { cuid, managed } from '@sap/cds/common';

entity Partner : cuid, managed {  

    @title : 'Partner ID'  
    @mandatory
        partner_ID     : String(10);

        @title : 'Name of Organization'
        @assert.format: '^[A-Za-z ]+$'
        name_org       : String(100);

@title : 'Country key'
        country        : String(3);

        @title : 'Partner Status'
        partner_status : String(20);

        @title : 'Partner Level'
        partner_level  : String(20);
}




entity PartnerTypes : cuid, managed {

@title : 'Partner ID'
@mandatory
    key partner_ID     : String(10);

    @title : 'Membership ID'
    @mandatory
    key membership_ID    : String(10);

    @title : 'Valid To'
    @mandatory
    key valid_to       : Date;
        @title : 'Valid From'
        valid_from     : Date;        
        @title : 'Partner Type'
        partner_type   : String(10);
        @title : 'Partner Type Status'
        PT_STATUS    : String(10);
        @title : 'Partner Type Status Reason'
        PT_status_reason : String(50);
}

using  partner from '../db/schema';



service partnerServices {

    entity Partner as projection on partner.Partner;
    entity PartnerTypes as projection on partner.PartnerTypes;

}

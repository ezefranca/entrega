//
//  DetailViewModel.m
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailViewModel.h"

@implementation DetailViewModel

-(instancetype)initWithModel:(DetailsAvfm *)model {
    self = [super init];
    self.model = model;
    if (self) {
        [self setValues];
    }
    return self;
}

-(void)setValues{
    
    self.address = _model.address;
    self.averageRating = _model.averageRating;
    self.background = _model.background.stringValue;
    self.city = _model.city;
    self.cityId = _model.cityId.stringValue;
    self.country = _model.country;
    self.defunct = _model.defunct.stringValue;
    self.favoriteCount = _model.favoriteCount;
    self.gps = _model.gps;
    self.lat = _model.lat;
    self.metro = _model.metro;
    self.name = _model.name;
    self.newestImage = _model.newestImage;
    self.phone = _model.phone;
    self.plCity = _model.plCity;
    self.plState = _model.plState;
    self.primaryTickets = _model.primaryTickets;
    self.ratingCount = _model.ratingCount;
    self.sameas = _model.sameas;
    self.seatsmartId = _model.seatsmartId;
    self.size = _model.size;
    self.state = _model.state;
    self.stats = _model.stats;
    self.stubhubId = _model.stubhubId;
    self.team = _model.team;
    self.tiqiqId = _model.tiqiqId;
    self.type = _model.type;
    self.venueId = _model.venueId;
    self.venueImages = _model.venueImages;
    self.zip = _model.zip;
}

@end

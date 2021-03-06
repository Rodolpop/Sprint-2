db.restaurants.find();
db.restaurants.find({},{restaurant_id:1, name:1, borough:1, cuisine:1});
db.restaurants.find({},{_id:0, restaurant_id:1, name:1, borough:1, cuisine:1});
db.restaurants.find({},{_id:0, restaurant_id:1, name:1, borough:1, "address.zipcode":1});       
db.restaurants.find({borough:"Bronx"});
db.restaurants.find({borough:"Bronx"}).limit(5);
db.restaurants.find({borough:"Bronx"}).limit(5).skip(5);
db.restaurants.find({ "grades.score": { $gte: 90 } });
db.restaurants.find(({grades: {$elemMatch:{score: {$gt:80, $lt:100}}}}));
db.restaurants.find({ "address.coord.0": {$lt: -95.754168} });
db.restaurants.find({$and: [{cuisine: {$not: {$regex:/American\s/}}}, {grades:{$elemMatch:{score:{$gt:70}}}}, {"address.coord.0" : {$lt : -65.754168}}]});
db.restaurants.find({$and: [{cuisine: {$not: {$regex:/American\s/}}}, {"grades.grade": "A"}, {borough: { $ne: "Brooklyn" }}]}).sort({cuisine: -1});
db.restaurants.find({name: {$regex: /ces$/}}, {restaurant_id: 1, name: 1, cuisine: 1 });
db.restaurants.find({name: {$regex: /Reg/i}}, {restaurant_id: 1, name: 1, cuisine: 1 });
db.restaurants.find({$and: [{borough: "Bronx"}, {$or:[{cuisine: {$regex:/American\s/}}, {cuisine:"Chinese"}]} ]});
db.restaurants.find({$or: [{borough: "Staten Island"}, {borough: "Queens"}, {borough: "Bronx"}, {borough: "Brooklyn"}]}, {restaurant_id: 1, name: 1, borough: 1, cuisine: 1 });
db.restaurants.find({$nor: [{borough: "Staten Island"}, {borough: "Queens"}, {borough: "Bronx"}, {borough: "Brooklyn"}]}, {restaurant_id: 1, name: 1, borough: 1, cuisine: 1 })
db.restaurants.find({"grades.0.score": { $lte: 10 }}, {restaurant_id: 1, name: 1, borough: 1, cuisine: 1 });
db.restaurants.find().sort({name: 1})
db.restaurants.find().sort({name: -1});
db.restaurants.find().sort({cuisine: 1, borough: -1});
db.restaurants.find({"address.street": null }).count();
db.restaurants.find({"address.coord": { $type: "double" } });

//============================
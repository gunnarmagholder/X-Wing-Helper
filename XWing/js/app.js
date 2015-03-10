var app = angular.module('xwing', []);

app.controller('cardController', ['$http', function($http) {
  var cards = this;
  $http.get('data/test/modifications.json').success(function($http){
    cards.modifications = data;
  });
  this.pilots = ptest;
  this.ships = stest;
}]);

var mtest = [
        {  
          name: "Hull Upgrade",
          id: 6,
          points: 3,
          modifier_func: function(stats) {
            return stats.hull += 1;
          },
          image: 'images/Ausruestung/verbesserte_huelle.jpg'
        }, {
          name: "Munitions Failsafe",
          id: 7,
          points: 1,
          image: 'images/Ausruestung/ausfallsichere_munition.jpg'
        }, {
          name: "Stygium Particle Accelerator",
          id: 8,
          points: 2,
          image: 'images/Ausruestung/s_t_beschleuniger.jpg'
        }
];
var ptest = [
{
          name: "Wedge Antilles",
          faction: "Rebel Alliance",
          id: 0,
          unique: true,
          ship: "X-Wing",
          skill: 9,
          points: 29,
          slots: ["Elite", "Torpedo", "Astromech"],
          image: "images/Piloten Rebellen/xwing_wedgeantilles"
        }, {
          name: "Garven Dreis",
          faction: "Rebel Alliance",
          id: 1,
          unique: true,
          ship: "X-Wing",
          skill: 6,
          points: 26,
          slots: ["Torpedo", "Astromech"],
          image: "images/Piloten Rebellen/xwing_garvendreis"
        }, {
          name: "Red Squadron Pilot",
          faction: "Rebel Alliance",
          id: 2,
          ship: "X-Wing",
          skill: 4,
          points: 23,
          slots: ["Torpedo", "Astromech"],
          image: "images/Piloten Rebellen/xwing_rotstaffel"
        }
];
var stest = [
{
          name: "X-Wing",
          factions: ["Rebel Alliance"],
          attack: 3,
          agility: 2,
          hull: 3,
          shields: 2,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 2, 2, 2, 0, 0], [1, 1, 2, 1, 1, 0], [1, 1, 1, 1, 1, 0], [0, 0, 1, 0, 0, 3]]
        },
{
          name: "Y-Wing",
          factions: ["Rebel Alliance", "Scum and Villainy"],
          attack: 2,
          agility: 1,
          hull: 5,
          shields: 3,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 2, 1, 0, 0], [1, 1, 2, 1, 1, 0], [3, 1, 1, 1, 3, 0], [0, 0, 3, 0, 0, 3]]
        },
{
          name: "A-Wing",
          factions: ["Rebel Alliance"],
          attack: 2,
          agility: 3,
          hull: 2,
          shields: 2,
          actions: ["Focus", "Target Lock", "Boost", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0], [2, 2, 2, 2, 2, 0], [1, 1, 2, 1, 1, 3], [0, 0, 2, 0, 0, 0], [0, 0, 2, 0, 0, 3]]
        }
];

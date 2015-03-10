var app = angular.module('xwing', []);

app.controller('cardController', function() {
  this.modifications = mtest;
});

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

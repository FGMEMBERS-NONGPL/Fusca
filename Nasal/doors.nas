# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           crew : aircraft.door.new("instrumentation/doors/crew", 8.0),
           passenger : aircraft.door.new("instrumentation/doors/passenger", 10.0)
         };
   return obj;
};

Doors.crewexport = func {
   me.crew.toggle();
}

Doors.passengerexport = func {
   me.passenger.toggle();
}

# =====
# Radio
# =====
Radio = {};

Radio.new = func {
   obj = { parents : [Radio],
           FM : aircraft.radiofm.new("instrumentation/radiofm/FM", 0.0),
           mp3 : aircraft.radiofm.new("instrumentation/radiofm/mp3", 10.0)
         };
   return obj;
};

Radio.FMexport = func {
   me.FM.toggle();
}

Radio.mp3export = func {
   me.mp3.toggle();
}



# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();
radiofmsystem = Radio.new();
setprop("controls/radiofm/FM", 0.0);

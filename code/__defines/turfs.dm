#define IS_OPAQUE_TURF(turf)	(turf.opacity || turf.has_opaque_atom)

#define TURF_REMOVE_CROWBAR     1
#define TURF_REMOVE_SCREWDRIVER 2
#define TURF_REMOVE_SHOVEL      4
#define TURF_REMOVE_WRENCH      8
#define TURF_REMOVE_WELDER      16
#define TURF_CAN_BREAK          32
#define TURF_CAN_BURN           64
#define TURF_HAS_EDGES          128
#define TURF_HAS_CORNERS        256
#define TURF_IS_FRAGILE         512
#define TURF_ACID_IMMUNE        1024
#define TURF_NORUINS            2048

// Roof related flags
#define ROOF_FORCE_SPAWN        1
#define ROOF_CLEANUP            2

// MultiZ faller control. (Bit flags.)
// Default flag is needed for assoc lists to work.
#define CLIMBER_DEFAULT 1
#define CLIMBER_NO_EXIT 2

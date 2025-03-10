import { cube, difference, triangle, union } from "scad-js-esm";

function stand() {
  return difference(triangle([100, 200]).linear_extrude(10).translate_z(-5));
}

export default function () {
  return union(
    difference(
      stand(),
      stand().scale(0.9, 0.9).scale_z(2).translate_y(-5),
      cube([6, 30, 40]).translate_y(90),
    ),
    cube([6, 10, 10]).translate_y(78),
  );
}

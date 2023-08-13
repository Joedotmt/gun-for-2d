function make_phy(_collision_group)
{
    fixture = physics_fixture_create();
    physics_fixture_set_polygon_shape(fixture);

    // four points, making up a convex shape
    physics_fixture_add_point(fixture, 2.77, 0.49);
    physics_fixture_add_point(fixture, 59.90, 0.35);
    physics_fixture_add_point(fixture, 58.37, 17.02);
    physics_fixture_add_point(fixture, 13.09, 38.02);
    physics_fixture_add_point(fixture, 0.92, 37.52);

    physics_fixture_set_density(fixture, 0.5);
    physics_fixture_set_restitution(fixture, 0.5);
    physics_fixture_set_collision_group(fixture, _collision_group);
    physics_fixture_set_linear_damping(fixture, 1);
    physics_fixture_set_angular_damping(fixture, 5);
    physics_fixture_set_friction(fixture, 0.2);
    bound_fix = physics_fixture_bind(fixture, id);
	return fixture;
	physics_fixture_delete(fixture);
}
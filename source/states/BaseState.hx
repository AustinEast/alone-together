package states;

import states.FishingState;

class BaseState extends State
{
	override public function create()
	{
		super.create();
		add_controller();
		
		openSubState(new FishingState());
	}

	function add_controller()
	{
		if (Reg.c == null) Reg.c = new PlayerController();
		Reg.c.add();
	}

	override public function update(dt:Float)
	{
		super.update(dt);
	}

}

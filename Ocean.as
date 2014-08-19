package grungeband2014.anglerfish {
import net.flashpunk.World;
import net.flashpunk.FP;
import grungeband2014.anglerfish.entities.Player;
import grungeband2014.anglerfish.entities.Lure;

	public class Ocean extends World {
		public function Ocean() {
			trace("World is loaded.");
			
			add(new Player());
			add(new Lure());
		}
		
		override public function end(): void {
		}
	}
}

package wwf;
import java.util.ArrayList;

public interface FestivalDAO {
	public FestivalBean getFest(String id);
	public ArrayList<FestivalBean> getAllFest();
}

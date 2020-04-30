import com.zhiyu.pojo.Secret;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyTest {
    @Test
    public void Test(){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String s = format.format(new Date());
        System.out.println(s);
    }
}

package idkengine.my.game;

import android.app.Activity;
import android.os.Bundle;
import com.idk.core.BaseEngine;
import com.idk.core.Scene;
import com.idk.parser.ObjectParser;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity {
    public BaseEngine engine;

    /* JADX WARN: Type inference failed for: r1v5, types: [idkengine.my.game.MainActivity$1] */
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        try {
            BaseEngine baseEngine = new BaseEngine(this);
            this.engine = baseEngine;
            setContentView(baseEngine.getView());
            new Thread() { // from class: idkengine.my.game.MainActivity.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        MainActivity mainActivity = MainActivity.this;
                        MainActivity.this.engine.addScene((Scene) ObjectParser.fromString(mainActivity.readFile(mainActivity.getAssets().open("level1.scn")), MainActivity.this.getClassLoader()));
                    } catch (Exception e) {
                    }
                }
            }.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    public String readFile(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line).append("\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }
}

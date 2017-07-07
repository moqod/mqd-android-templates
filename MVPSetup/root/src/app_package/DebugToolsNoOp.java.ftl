package ${packageName};

import android.app.Application;
import android.os.StrictMode;
import com.facebook.stetho.Stetho;
import com.github.pedrovgs.lynx.LynxShakeDetector;
import com.squareup.leakcanary.LeakCanary;

public final class DebugTools {

    private DebugTools() {
    }

    public static void init(Application application) {
		// no-op
    }

}

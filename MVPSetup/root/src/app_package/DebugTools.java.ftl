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
        Stetho.initializeWithDefaults(application);

        LynxShakeDetector lynxShakeDetector = new LynxShakeDetector(application);
        lynxShakeDetector.init();

        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder()
                .detectAll()
                .penaltyLog()
                .build());
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder()
                .detectAll()
                .penaltyLog()
                .build());

        if (LeakCanary.isInAnalyzerProcess(application)) {
            return;
        }
        LeakCanary.install(application);
    }

}

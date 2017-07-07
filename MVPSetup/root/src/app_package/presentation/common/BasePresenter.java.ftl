package ${packageName}.presentation.common;

public interface BasePresenter<V> {
    void attachView(V view);
    void detachView();
}
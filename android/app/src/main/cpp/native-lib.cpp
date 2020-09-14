#include <jni.h>
#include <string>

extern "C" {
    jstring
    Java_com_rogchap_foobar_MainActivity_reverse(JNIEnv* env, jobject, jstring str) {
        return str;
    }
}

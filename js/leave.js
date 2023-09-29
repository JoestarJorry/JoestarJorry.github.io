function changeTitle(title) {
    // chrome
    if ('webkitVisibilityState' in document) {
        document.addEventListener('webkitvisibilitychange', () => {
            if (document.webkitVisibilityState === 'hidden') {
                // 离开了
                document.title = '@_@ 崩溃了';
            } else {
                // 回来了
                document.title = '>_<  又好了~';
                setTimeout(() => {
                    document.title = title;
                },500);
            }
        });
    }

    // IE
    if ('msvisibilitychange' in document) {
        document.addEventListener('msvisibilitychange', () => {
            if (document.msVisibilityState === 'hidden') {
                // 离开了
                document.title = '@_@ 崩溃了';
            }else{
                // 回来了
                document.title = '>_<  又好了~';
                setTimeout(() => {
                    document.title = title;
                },500);
            }
        });
    }

    // FF
    if('mozvisibilitychange' in document) {
        document.addEventListener('mozvisibilitychange', () => {
            if (document.mozVisibilityState === 'hidden') {
                // 离开了
                document.title = '@_@ 崩溃了';
            }else{
                // 回来了
                document.title = '>_<  又好了~';
                setTimeout(() => {
                    document.title = title;
                },500);
            }
        });
    }
}

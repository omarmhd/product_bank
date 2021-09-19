(function () {
    var $screenDesignWidth = 1366;
    var $screenStop = 992;
    var $varSpace = getComputedStyle(document.documentElement).getPropertyValue('--varSpace').replace('px', '');
    var $varMarPad = getComputedStyle(document.documentElement).getPropertyValue('--varMarPad').replace('px', '');
    function changeSize(width, screenDesignWidth, originalSize) {
        let $size = width / (screenDesignWidth / originalSize);
        if ($size > originalSize) {
            $size = originalSize;
        }
        return $size;
    }
    function changeMarginPadding(width, screenDesignWidth, fontSizeOriginal) {
        let $fontSize = changeSize(width, screenDesignWidth, fontSizeOriginal);
        document.documentElement.style.setProperty('--varMarPad', $fontSize + 'px');
    }
    function chanageVarSpace(width, screenDesignWidth, fontSizeOriginal) {
        if( $screenStop <= width){
            let $fontSize = changeSize(width, screenDesignWidth, fontSizeOriginal);
            document.documentElement.style.setProperty('--varSpace', $fontSize + 'px');
        }else{
            document.documentElement.style.setProperty('--varSpace', $varSpace + 'px');
        }
    }
    if (window.innerWidth < $screenDesignWidth) {
       
        changeMarginPadding(window.innerWidth, $screenDesignWidth, $varMarPad);
        chanageVarSpace(window.innerWidth, $screenDesignWidth, $varSpace);
    }
    window.addEventListener('resize', function () {
        
        changeMarginPadding(window.innerWidth, $screenDesignWidth, $varMarPad);
        chanageVarSpace(window.innerWidth, $screenDesignWidth, $varSpace);
    });

})();
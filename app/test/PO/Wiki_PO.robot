*** Settings ***
Library    AppiumLibrary
Library    Process    

*** Keywords ***
Search on wikipedia
    [Arguments]    ${term}
    Click Element    id=org.wikipedia.alpha:id/search_container
	Click Element    id=org.wikipedia.alpha:id/search_src_text
	Input Text    id=org.wikipedia.alpha:id/search_src_text    ${term}
	Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.view.ViewGroup/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
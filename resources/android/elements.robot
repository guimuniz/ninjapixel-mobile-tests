*** Variables ***

# Components
${POPUP}            id=android:id/message
${POPUP_OK}         id=android:id/button1
${GO_BACK}          accessibility_id=Navigate up

# Login
${BT_ACCOUNT}       id=qaninja.com.pixel:id/accountButt
${INPUT_EMAIL}      id=qaninja.com.pixel:id/usernameTxt
${INPUT_PASS}       id=qaninja.com.pixel:id/passwordTxt
${BT_LOGIN}         id=qaninja.com.pixel:id/loginButt

# Product
${PRODUCT_PRICE}    id=qaninja.com.pixel:id/pdProdPriceTxt

# Cart
${REFRESH_CART}     id=qaninja.com.pixel:id/refreshButt
${BT_CHECKOUT}      id=qaninja.com.pixel:id/cartCheckoutButt
${PROGRESS_BAR}     id=qaninja.com.pixel:id/progressBar2


# Menu
${MENU_LIST}        id=qaninja.com.pixel:id/ibnt_icon_iv

# PayPal
${INPUT_PAYPAL_EMAIL}     accessibility_id=Email
${INPUT_PAYPAL_PASS}      accessibility_id=Password
${BT_PAYPAL_LOGIN}        xpath=/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout
${BT_PAY}                 xpath=/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]
${PURCHASE_VALUE}         xpath=/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TableLayout[1]/android.widget.TableRow/android.widget.TextView[2]

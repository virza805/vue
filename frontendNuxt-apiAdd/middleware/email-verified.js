export default ({ $auth, redirect, store }) => {
    if ($auth.user.email_verified_at == null) {

        store.commit("toaster/fire", {
            text: "Please verify your email address for access this page",
            type: 'error'
        })
        return redirect("/Backend");
    }
};

export default ({ $auth, redirect, store }) => {
    if ($auth.user.role !== 1) {

        store.commit("toaster/fire", {
            text: "Don't try to be smart! Only Super Admin access this page.",
            type: 'error'
        })
        return redirect("/Backend");
    }
};
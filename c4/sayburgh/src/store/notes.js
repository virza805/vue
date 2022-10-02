const notes = {

    namespaced: true,

    state() {
        return {
            roles: ["Admin", "Staff", "Other"],
            notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
            filterRole: "",
        };
    },
    getters: {
        allCount(state) {
            return state.notes.length;
        },
        noteCountByRole(state) {
            return state.roles.map((role) => {
                return {
                    role,
                    noteCount: state.notes.filter((note) => note.role === role).length,
                };
            });
        },

        filteredNotes(state) {
            if (state.filterRole == "") {
                return state.notes;
            }
            return state.notes.filter((note) => note.role === state.filterRole);
        },
    },
    mutations: {
        addNote(state, note) {
            state.notes.unshift(note);
        },
        filterNote(state, role) {
            state.filterRole = role;
        },
        deleteNote(state, id) {
            state.notes = state.notes.filter((note) => note.id !== id);
        },
    },

}
export default notes;
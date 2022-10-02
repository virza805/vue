const notes = {

    namespaced: true,

    state() {
        return {
            colors: ["#07f224b3", "#ffe5d9ad", "#f20707b3"],
            roles: ["Admin", "Staff", "Other"],
            notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
            filterColor: "",
        };
    },
    getters: {
        allRoles(state) {
            return state.roles.map((role) => role);
        },
        allCount(state) {
            return state.notes.length;
        },
        noteCountByColor(state) {
            return state.colors.map((color) => {
                return {
                    color,
                    noteCount: state.notes.filter((note) => note.color === color).length,
                };
            });
        },
        // noteCountByAdmin(state) {
        //     return state.colors.map((color) => {
        //         return {
        //             color,
        //             noteCount: state.notes.filter((note) => note.color === color).length,
        //         };
        //     });
        //     // if(this.filter_mode == "done") return this.todos.filter((todo) => todo.done);
        // },
        filteredNotes(state) {
            if (state.filterColor == "") {
                return state.notes;
            }
            return state.notes.filter((note) => note.color === state.filterColor);
        },
    },
    mutations: {
        addNote(state, note) {
            state.notes.unshift(note);
        },
        filterNote(state, color) {
            state.filterColor = color;
        },
        deleteNote(state, id) {
            state.notes = state.notes.filter((note) => note.id !== id);
        },
    },

}
export default notes;
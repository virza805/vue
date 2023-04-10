const student = {

    namespaced: true,
    
    state() {
        return {

            // notes: JSON.parse(localStorage.getItem("notes:notes")) || [],
            class:['v','vi','vii','viii','ix','x'],
            sex:['Male','Female', 'Other'],
            filter:'',
            students: [
                {
                    id: 1,
                    name:"tanvir",
                    class:"vi",
                    sex: "Mail"
                },
                {
                    id: 2,
                    name:"Al-Amin",
                    class:"ix",
                    sex: "Mail"
                },
                {
                    id: 7,
                    name:"Tonny",
                    class: "x",
                    sex: "Femail"
                },
                {
                    id: 5,
                    name:"Onamica",
                    class: "vii",
                    sex: "Femail"
                },
            ]
        };
    },
    getters: {
        allStudent(state) {
            return state.students;
        },
        allCount(state) {
            return state.students.length;
        },
        maxId(state) {
            return Math.max(state.students.id);
        },
        classCount(state) {
            // Count the number of people with age 25
            const count = state.students.reduce((acc, counttss) => {
                if (counttss.class === 'ix') {
                    return acc + 1;
                } else {
                    return acc;
                }
            }, 0);
            return count;
        },
        cCount: (state) => (cal) => {
            const count = state.students.reduce((acc, counttss) => {
                if (counttss.class === cal) {
                    return acc + 1;
                } else {
                    return acc;
                }
            }, 0);
            return count;
        },
        genderCount: (state) => (cal) => {
            const count = state.students.reduce((acc, counttss) => {
                if (counttss.sex === cal) {
                    return acc + 1;
                } else {
                    return acc;
                }
            }, 0);
            return count;
        },
        filteredClass(state) {
            if(state.filter == "") {
                return state.students;
            } else if (state.filter == "Mail" || state.filter == "Femail") {
                return state.students.filter((st) => st.sex === state.filter);
            } 
            return state.students.filter((st) => st.class === state.filter);
        },
        // filteredClass(state) {
        //     if(state.filter == "") {
        //         return state.students;
        //     }
        //     return state.students.filter((st) => st.class === state.filter);
        // },
        
    },
    mutations: {
        addStudent(state, student) {
            state.students.unshift(student);
        },
        deleteStudent(state, id) {
            state.students = state.students.filter((student) => student.id !== id);
        },
        filterStudent(state, ss) {
            state.filter = ss;
        },
        filterGender(state, ss) {
            state.filter = ss;
            
        },
        
    },

}
export default student;
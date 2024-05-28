const teams = require('../../data/team_top_14.json');

const teamsTop14Controllers = {

    // liste de teams
    teamList: (req, res) => {
        res.render('top14', { teams });
    },

    // détail d'une team
    teamDetail: (req, res) => {

        // quelle team je souhaite afficher ?
        const teamId = parseInt(req.params.id);
        console.log(teamId);

        // récuperer la team qui correspond à cet id
        const team = teams.find(item => item.id === teamId);

        console.log(team);

        res.render('team', { teams });
    },

};

module.exports = teamsTop14Controllers;
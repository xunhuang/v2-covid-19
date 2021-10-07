import { Link, Toolbar, Typography } from '@material-ui/core';
import { fade, makeStyles, useTheme } from '@material-ui/core/styles';

import { AppSearchBar } from './AppSearchBar';
import { SocialMediaButtons } from './SocialMedia';
import { FullDiv } from './styles/HomeStyles';

const DONATION_URL = "https://ko-fi.com/covid19direct";

const RELIEF_COLOR = "#fff";

const useStyles = makeStyles((theme) => ({
  appBar: {
    // color: RELIEF_COLOR,
    background: RELIEF_COLOR,
    display: "flex",
  },
  nameAndSearch: {
    display: "flex",
    alignItems: "center",
    [theme.breakpoints.down("xs")]: {
      display: "initial",
    },
  },
  appName: {
    overflow: "visible",
  },
  search: {
    marginLeft: theme.spacing(4),
  },
  donations: {
    background: "#00aeef",
    color: "white",
    borderRadius: "15px",
    display: "block",
    marginLeft: "16px",
    padding: "6px 8px",
    textAlign: "center",
    "&:hover": {
      // color: theme.palette.primary.light,
      textDecoration: "none",
      transform: "translateY(-1px)",
    },
  },
  expander: {
    flexGrow: 1,
  },
  socialButtons: {
    fontSize: "1.5625em",
    lineHeight: "1em",
    whiteSpace: "nowrap",
    "& > *": {
      marginLeft: "4px",
      verticalAlign: "middle",
    },
  },
  socialButton: {
    "&:hover": {
      filter: `drop-shadow(0 0 2px ${fade(RELIEF_COLOR, 0.95)})`,
      transform: "translateY(-1px)",
    },
  },
  actions: {
    alignItems: "center",
    display: "flex",
    flexWrap: "wrap",
    flexShrink: 2,
    justifyContent: "flex-end",
    textAlign: "end",
  },
}));

export const AppHeaderSection = () => {
  const classes = useStyles();
  const theme = useTheme();

  return (
    <FullDiv>
      <Toolbar className={classes.appBar}>
        <div>
          <div className={classes.nameAndSearch}>
            <Typography noWrap className={classes.appName} variant="h6">
              COVID-19.direct
            </Typography>
          </div>

          <SocialMediaButtons
            buttonClassName={classes.socialButton}
            className={classes.socialButtons}
          />
        </div>
        <div className={classes.expander} />
        <div className={classes.actions}>
          <Link
            target="_blank"
            href={DONATION_URL}
            className={classes.donations}
          >
            Buy Us A Coffee
          </Link>
        </div>
      </Toolbar>
      <AppSearchBar />
    </FullDiv>
  );
};

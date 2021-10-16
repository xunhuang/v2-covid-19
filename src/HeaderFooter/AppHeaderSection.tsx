import { Link, Toolbar, Typography } from '@material-ui/core';
import { makeStyles } from '@material-ui/core/styles';

import { FullDiv } from '../styles/HomeStyles';
import { AppSearchBar } from './AppSearchBar';
import { SocialMediaButtons } from './SocialMedia';

const DONATION_URL = "https://ko-fi.com/covid19direct";

const useStyles = makeStyles((theme) => ({
  appBar: {
    display: "flex",
  },
  appName: {
    overflow: "visible",
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

  return (
    <FullDiv>
      <Toolbar className={classes.appBar}>
        <div>
          <Typography noWrap className={classes.appName} variant="h6">
            COVID-19.direct (v2)
          </Typography>

          <SocialMediaButtons
            buttonClassName={classes.socialButton}
            className={classes.socialButtons}
          />
          <Link href={"https://coviddatausa.com"}>V1 Site</Link>
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

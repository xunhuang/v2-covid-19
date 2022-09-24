import { Link, Toolbar, Typography } from '@material-ui/core';
import { makeStyles } from '@material-ui/core/styles';
import moment from 'moment';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { LastUpdatedState } from '../RecoilState';
import { AppSearchBar } from './AppSearchBar';
import { SocialMediaButtons } from './SocialMedia';

export const FullDivPadded = styled.div`
  margin: 3px;
`;

const DONATION_URL = "https://ko-fi.com/covid19direct";

const useStyles = makeStyles((theme) => ({
  appBar: {
    display: "flex",
  },
  appName: {
    overflow: "visible",
    margin: "20px",
  },
  topleft: {
    display: "flex",
    flexDirection: "column",
    alignItems: "self-start",
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
      marginRight: "4px",
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
  const lastUpdated = useRecoilValue(LastUpdatedState);

  return (
    <FullDivPadded>
      <Toolbar className={classes.appBar}>
        <div className={classes.topleft}>
          <Link href={"https://covid-19.direct"}>
            <Typography noWrap className={classes.appName} variant="h6">
              COVID-19.direct
            </Typography>
          </Link>

          <SocialMediaButtons
            buttonClassName={classes.socialButton}
            className={classes.socialButtons}
          />
          {lastUpdated && `Updated : ${moment(lastUpdated).format("lll")}`}
        </div>
        <div className={classes.expander} />
        <div>
          <Link
            target="_blank"
            href={DONATION_URL}
            className={classes.donations}
          >
            Buy Us A Coffee
          </Link>
          <Link
            target="_blank"
            href={"https://protect-public.hhs.gov/pages/hospital-utilization"}
          >
            Hospital Bed Utilization (HHS)
          </Link>

        </div>
      </Toolbar>
      <Typography className={classes.appName} variant="h6">
      As Covid inches toward endemic and with the abundance of public data resources, it is time to end this project. 
      We are grateful for the team that contributed to code, data, mindshare and financial support of this site since the beginning of the pandemic. 
      We are thankful to the users of this site which stood at 135K daily active uses at its height. 
      Thank you for your loyalty, pointing out data errors and bugs, and making suggestions to make the site better. 
      This project has been a tremendous learning and public service opportunity for me personally.
      </Typography>
      <Typography className={classes.appName} variant="h6">
       With gratitude, Wilson and Helen 
            </Typography>
      <AppSearchBar />
    </FullDivPadded>
  );
};
